SELECT ?labelLg1 ?labelLg2 ?idOperation 
FROM <http://rdf.insee.fr/graphes/qualite/rapport/${idSims}>  
WHERE {  
	?report rdf:type sdmx-mm:MetadataReport . 				
		
	OPTIONAL{ ?report sdmx-mm:target ?operation .  BIND(STRAFTER(STR(?operation),'/operation/') AS ?idOperation) . } 
				
	 OPTIONAL{ ?report rdfs:label ?labelLg1 . 
		FILTER(lang(?labelLg1) = '${LG1}') 
	 }
	 OPTIONAL{ ?report rdfs:label ?labelLg2 . 
		FILTER(lang(?labelLg2) = '${LG2}')  
	 }
				
	FILTER(STRENDS(STR(?report), '${idSims}')) 
}