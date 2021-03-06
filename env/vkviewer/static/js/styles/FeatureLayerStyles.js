VK2.Styles.FeatureLayerStyles = {
		
	    _defaultStyle: {
	    		fillColor: "#ee9900",
	    		fillOpacity: "0",
	    },

	    _tmpStyle: {
    		fillColor: "#FF5500",
    		fillOpacity: "0.4",
    		strokeColor: "#FF0000",
    		labelAlign: "cc", 
    		fontColor: "#000000", 
    		fontOpacity: 1, 
    		fontFamily: "Arial",
    		fontSize: 16, 
    		fontWeight: "600"
	    },
	    
	    _defaultStyleMap: new OpenLayers.StyleMap({
	    	fillColor: "#ee9900",
	    	fillOpacity: "0",
	    }),
	    
	    _georeferenceLayerStyles: new OpenLayers.StyleMap({ 
	    	"default": new OpenLayers.Style({ 
				pointRadius: 6, 
				strokeColor: "#ff6103", 
				fillColor: "#FF0000", 
				fillOpacity: 0.4, 
				strokeWidth: 2 
			}) 
		})
	    

}