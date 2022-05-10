package es.macero.dev.restexample;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import java.util.*;
import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
//import java.util.*;
import org.springframework.metrics.annotation.Timed;
//import org.springframework.metrics.instrument.MeterRegistry;
import io.micrometer.core.instrument.MeterRegistry;
import io.prometheus.client.*;

@RestController
@RequestMapping("/spanish-greetings")
@Timed(value="greetingscrape",longTask=true)
public class SpanishGreetingController {

    private List<SpanishGreeting> spanishGreetings;

    //Map<Integer,String> greeting = new Map<Integer, String>();
    Counter counter = Counter.build().namespace("java").name("my_counter").help("This is my counter").register();
    /* Add Meter registry variable enabling prometheys LongTask metrics */
    //Histogram histogram = Histogram.build().namespace("java").name("my_histogram").help("This is my histogram").register();
    //Summary summary = Summary.build().namespace("java").name("my_summary").help("This is my summary").register();
    /*Histogram overallHistogram = Histogram.build()
	        .name(METRIC_PREFIX + FSIZE)
		    .buckets(configuredBuckets)
		        .name(FsImageCollector.METRIC_PREFIX + REPLICATION)
			    .help("Overall file replication").create(); */
    //@Override
    public SpanishGreetingController(MeterRegistry registry) {
        spanishGreetings = new ArrayList<>();
        spanishGreetings.add(new SpanishGreeting("Hola!"));
        spanishGreetings.add(new SpanishGreeting("Qué tal?!"));
        spanishGreetings.add(new SpanishGreeting("Buenas!"));
	//countreq = registry.counter("t");
        // Summary summary = Summary.build().namespace("java").name("my_summary").help("This is my summary").quantile(0.05,0.75).quantile(0.5,0.05).register();

    }


    /*@Override
            public Summary create() {
		                return Summary.build()
					                    .name(name)
							                        .help(name)
										                    .labelNames(tags)
												                        .quantile(0.5, 0.05)
															                    .quantile(0.75, 0.05)
																	                        .quantile(0.99, 0.05)
																				                    .create()
																						                        .register();
				        }*/

    @GetMapping("/{id}")
    public SpanishGreeting getSpanishGreetingById(@PathVariable("id") final int id) {
        counter.inc();
	//int c = counter.inc();
	//System.out.ln("Count req by id",c);
	  //histogram.create();
        //summary.quantile(0.5,0.05).quantile(0.75,0.005);
	 return spanishGreetings.get(id - 1); // list index starts with 0 but we prefer to start on 1
    }

    @GetMapping("/random")
    public SpanishGreeting getRandom() {
            counter.inc();
	   //int c = counter.ln(c);
	    //System.out.ln("Count req",c);
	    //histogram.observe(0.05);
	    //summary.observe(0.05);
	    return spanishGreetings.get(new Random().nextInt(spanishGreetings.size()));
    }

    @PostMapping
    @ResponseStatus(HttpStatus.OK)
    public void createSpanishGreeting(@RequestBody SpanishGreeting spanishGreeting) {
        //countreq.increment();
	spanishGreetings.add(spanishGreeting);
    }
}
