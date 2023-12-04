package config;

import org.springframework.context.annotation.*;
import ctrl.*;

@Configuration
public class CtrlConfig {
	@Bean
	public IndexCtrl indexCtrl() {
		return new IndexCtrl();
	}
}
