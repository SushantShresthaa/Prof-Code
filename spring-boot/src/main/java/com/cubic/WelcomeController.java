package com.cubic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WelcomeController {
	
	
	/*@GetMapping("/mama")
	public ResponseEntity<String> downloadFile() throws IOException {
		Path path = Paths
				.get("D:/ameya.jpg");

		WebClient webClient = WebClient.builder().baseUrl("https://v2.angular.io/resources/images/devguide/lifecycle-hooks/hooks-in-sequence.png").build();

		// Get file data
		Flux<DataBuffer> dataBufferFlux = webClient.get().accept(MediaType.APPLICATION_OCTET_STREAM, MediaType.ALL)
				.retrieve().bodyToFlux(DataBuffer.class);

		// Streams the dataBufferFlux from response instead of loading it all in memory
		DataBufferUtils.write(dataBufferFlux, path, StandardOpenOption.CREATE).block();

		return new ResponseEntity<String>("File Downloaded Successfully", HttpStatus.OK);
	}*/
	
	
	@GetMapping("/papa")
	public String showMainPage(@RequestParam(required = false) boolean p) {
		
		System.out.println(p);
		 
		///views/
		// .jsp
		return "index";    // /views/index.jsp
	} 

}
