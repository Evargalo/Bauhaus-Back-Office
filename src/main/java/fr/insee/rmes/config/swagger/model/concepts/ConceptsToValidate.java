package fr.insee.rmes.config.swagger.model.concepts;

import io.swagger.v3.oas.annotations.media.Schema;

public class ConceptsToValidate {

	@Schema(description = "Id", required = true)
	public String id;
	
	@Schema(description = "Label", required = true)
	public String label;
	
	@Schema(description = "Owner", required = true)
	public String creator;
	
	@Schema(description = "Expiration date")
	public String valid;
	
}
