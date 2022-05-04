package es.macero.dev;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;
import org.springframework.metrics.export.prometheus.EnablePrometheusMetrics;
//import io.prometheus.client.spring.boot.EnablePrometheusEndpoint;
//import io.prometheus.client.spring.boot.EnableSpringBootMetricsCollector;


@SpringBootApplication
@EnableSwagger2
//@EnablePrometheusMetrics
//@EnablePrometheusEndpoint
//@EnableSpringBootMetricsCollector
public class SpringBootRestcontrollerExampleApplication {

		public static void main(String[] args) {
					SpringApplication.run(SpringBootRestcontrollerExampleApplication.class, args);
						}

			@Bean
				public Docket api() {
							return new Docket(DocumentationType.SWAGGER_2)
												.select()
																.apis(RequestHandlerSelectors.any())
																				.paths(PathSelectors.regex("/spanish-greeting.*"))
																								.build();
								}

}
