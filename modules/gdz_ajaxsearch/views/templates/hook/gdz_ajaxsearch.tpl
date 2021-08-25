{*
* 2007-2019 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2019 PrestaShop SA
*  @version  Release: $Revision$
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<div id="search-form" class="search-form">
    <div class="search-box">
		<form method="get" action="{$link->getPageLink('search')|escape:'html':'UTF-8'}" class="search-box">
			<input type="hidden" name="controller" value="search" />
			<input type="hidden" name="orderby" value="position" />
			<input type="hidden" name="orderway" value="desc" />
        	<div class="input-group">
    			<input type="text" name="search_query" placeholder="{l s='Search everything...' mod='gdz_ajaxsearch'}" class="gdz-search-input form-control search-input" />
    			<button type="submit" name="submit_search" class="button-search">
					<svg width="23" height="23" viewBox="0 0 23 23" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M23.7266 22.4071L17.8694 16.5501C19.3253 14.7993 20.2024 12.5512 20.2024 10.1016C20.2024 4.53154 15.671 0 10.1013 0C4.5314 0 0 4.53154 0 10.1016C0 15.6712 4.5314 20.2024 10.1013 20.2024C12.5507 20.2024 14.799 19.3254 16.5498 17.8695L22.4071 23.7267C22.5892 23.9089 22.8281 24 23.0668 24C23.3056 24 23.5444 23.9089 23.7267 23.7267C24.0911 23.3623 24.0911 22.7715 23.7266 22.4071ZM1.86621 10.1016C1.86621 5.56057 5.56043 1.86621 10.1013 1.86621C14.642 1.86621 18.3361 5.56057 18.3361 10.1016C18.3361 14.6422 14.642 18.3362 10.1013 18.3362C5.56043 18.3362 1.86621 14.6422 1.86621 10.1016Z" fill="black"/>
					</svg>
    			</button>
        	</div>
		</form>
		<div class="search-result-area"></div>
    </div>
</div>
