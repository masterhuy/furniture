{*
 * @package Jms Ajax Search
 * @version 1.1
 * @Copyright (C) 2009 - 2015 Joommasters.
 * @license http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 * @Website: http://www.joommasters.com
*}
<div class="btn-group gdz_ajax_search col-auto{if $gdzSetting.search_box_type} {$gdzSetting.search_box_type}{/if}" id="gdz_ajax_search">
	<a href="#" class="btn-search" data-toggle="dropdown" data-display="static">
		<svg width="23" height="23" viewBox="0 0 23 23" fill="none" xmlns="http://www.w3.org/2000/svg">
			<g clip-path="url(#clip0)">
			<path d="M23.7266 22.4071L17.8694 16.5501C19.3253 14.7993 20.2024 12.5512 20.2024 10.1016C20.2024 4.53154 15.671 0 10.1013 0C4.5314 0 0 4.53154 0 10.1016C0 15.6712 4.5314 20.2024 10.1013 20.2024C12.5507 20.2024 14.799 19.3254 16.5498 17.8695L22.4071 23.7267C22.5892 23.9089 22.8281 24 23.0668 24C23.3056 24 23.5444 23.9089 23.7267 23.7267C24.0911 23.3623 24.0911 22.7715 23.7266 22.4071ZM1.86621 10.1016C1.86621 5.56057 5.56043 1.86621 10.1013 1.86621C14.642 1.86621 18.3361 5.56057 18.3361 10.1016C18.3361 14.6422 14.642 18.3362 10.1013 18.3362C5.56043 18.3362 1.86621 14.6422 1.86621 10.1016Z" fill="black"/>
			</g>
			<defs>
			<clipPath id="clip0">
			<rect width="23" height="23" fill="white"/>
			</clipPath>
			</defs>
		</svg>
	</a>
	<div id="search-form-dropdown" class="search-form dropdown-menu">
		<div class="search-box">
			<form method="get" action="{$link->getPageLink('search')|escape:'html':'UTF-8'}">
				<input type="hidden" name="controller" value="search" />
				<input type="hidden" name="orderby" value="position" />
				<input type="hidden" name="orderway" value="desc" />
				<div class="input-group">
					<button type="submit" name="submit_search" class="button-search">
						<svg width="23" height="23" viewBox="0 0 23 23" fill="none" xmlns="http://www.w3.org/2000/svg">
							<g clip-path="url(#clip0)">
							<path d="M23.7266 22.4071L17.8694 16.5501C19.3253 14.7993 20.2024 12.5512 20.2024 10.1016C20.2024 4.53154 15.671 0 10.1013 0C4.5314 0 0 4.53154 0 10.1016C0 15.6712 4.5314 20.2024 10.1013 20.2024C12.5507 20.2024 14.799 19.3254 16.5498 17.8695L22.4071 23.7267C22.5892 23.9089 22.8281 24 23.0668 24C23.3056 24 23.5444 23.9089 23.7267 23.7267C24.0911 23.3623 24.0911 22.7715 23.7266 22.4071ZM1.86621 10.1016C1.86621 5.56057 5.56043 1.86621 10.1013 1.86621C14.642 1.86621 18.3361 5.56057 18.3361 10.1016C18.3361 14.6422 14.642 18.3362 10.1013 18.3362C5.56043 18.3362 1.86621 14.6422 1.86621 10.1016Z" fill="black"/>
							</g>
							<defs>
							<clipPath id="clip0">
							<rect width="23" height="23" fill="white"/>
							</clipPath>
							</defs>
						</svg>
					</button>
					<input type="text" name="search_query" placeholder="{l s='Search everything...' mod='gdz_ajaxsearch'}" class="gdz-search-input form-control search-input" />
				</div>
			</form>
			<div class="search-result-area"></div>
		</div>
	</div>
</div>
