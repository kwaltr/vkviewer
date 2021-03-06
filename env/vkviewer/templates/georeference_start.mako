<%inherit file="basic_page.mako" />

<%block name="header_content">	 
	<link rel="stylesheet" type="text/css" href="${request.static_url('vkviewer:static/css/styles.css')}" />
</%block>

<%block name="body_content">
	<div class="georeference-start page-container full-display">
		<div class="vk2GeoreferenceMtbStartPage">
			<div id="georeferenceMap" class="georeferenceMap"></div>			
		</div>
		
		<!-- Loading overlay screen -->
		<div id="georefLoadingScreen" class="georefLoadingScreen">
			<div class="centerLoading">
				<div class="progress progress-striped active">
				  <div class="progress-bar"  role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
				  </div>
				</div>
			</div>
		</div>
		
		<!-- Link back to main page -->
		<a id="anchorBackToIndexPage" class="anchorBackToIndexPage" target="_top"
			 href="${request.route_url('home_login')}?georef=on&points=20"></a>
			 
		<!-- Footer panel -->
		<div class="vk2FooterPanel">
			<div id="vk2Footer" class="vk2Footer">
				<div class="footerContainer">
        			<div class="leftside">
						<ul class="footerList">
					    	<li class="listelement thick leftborder">${_('footer_project_name')}</li>
					        <li class="listelement">${_('footer_project_desc_long')}</li>
					    </ul>
        			</div>
					<div class="rightside">
						<ul class="footerList">
					    	
					    	% if faq_url:
					        	<li class="listelement leftborder">
					        		<a href="${faq_url}" class="vk2FooterLinks fancybox-open">FAQ</a>        				
					        	</li>       		   		
					        % else:
					        	<li class="listelement leftborder">
					        		<a href="${request.route_url('faq')}" class="vk2FooterLinks fancybox-open">FAQ</a>        				
					        	</li>
					        % endif
					        	<li class="listelement leftborder">
					         		<a href="${request.route_url('contact')}" class="vk2FooterLinks fancybox-open">${_('footer_contact')}</a>		
					        	</li>        				
					        	<li class="listelement leftborder">
					        		<a href="${request.route_url('project')}" class="vk2FooterLinks fancybox-open">${_('footer_project')}</a>    				
					        	</li>
					        	<li class="listelement">
					        		<a href="${request.route_url('impressum')}" class="vk2FooterLinks fancybox-open">${_('footer_editorial')}</a>
					        	</li>
					        </ul>
					 </div>
        		</div>
        	</div>
		</div>
        <!-- end footer -->
        
        <!-- sidebar -->
        <div id="vk2GeoreferenceToolsPanel" class="vk2GeoreferenceToolsPanel">
			<a id="vk2GeoreferenceToolsHandle" class="vk2GeoreferenceToolsHandle" 
				data-open="${request.static_url('vkviewer:static/images/layerbar.png')}" 
				data-close="${request.static_url('vkviewer:static/images/close.png')}"
				title="${_('tool_titel_georeference')}"></a>
		
			<!-- Georeference Tools Content -->

		</div>
	</div>
		

</%block>

<%block name="js_content">
    <script>
			var map = null;
			$(document).ready(function(){
				VK2.Utils.initializeFancyboxForClass('vk2FooterLinks');
		
				var query_params = VK2.Utils.getAllQueryParams();
				map = VK2.Utils.Georef.initializeGeoreferencerMap('georeferenceMap', query_params, true);
				var georeferenceTool = new VK2.Tools.Georeferencer({
					container: 'vk2GeoreferenceToolsPanel',
					handler: 'vk2GeoreferenceToolsHandle',
					map: map,
					controller: VK2.Controller.GeoreferenceController,
					urlParams: query_params
				}, query_params.get('mtbid'));
			});
    </script> 
</%block>


