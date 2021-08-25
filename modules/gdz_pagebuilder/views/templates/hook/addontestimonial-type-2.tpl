{*
* 2007-2020 PrestaShop
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
*  @copyright  2007-2020 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if $testimonials|@count gt 0}
	<div class="pb-testimonial type-2">
		<div class="pb-testimonial-carousel owl-carousel carousel-tpl" data-items="{if $items_show_md}{$items_show_md|escape:'htmlall':'UTF-8'}{else}5{/if}" data-lg="{if $items_show_md}{$items_show_md|escape:'htmlall':'UTF-8'}{else}5{/if}" data-md="{if $items_show_md}{$items_show_md|escape:'htmlall':'UTF-8'}{else}4{/if}" data-sm="{if $items_show_sm}{$items_show_sm|escape:'htmlall':'UTF-8'}{else}3{/if}" data-xs="{if $items_show_xs}{$items_show_xs|escape:'htmlall':'UTF-8'}{else}2{/if}" data-nav="{if $navigation == '0'}false{else}true{/if}" data-dots="{if $pagination == '1'}true{else}false{/if}" data-auto="{if $autoplay == '1'}true{else}false{/if}" data-rewind="{if $rewind == '1'}true{else}false{/if}" data-slidebypage="{if $slidebypage == '1'}page{else}1{/if}" data-margin="{if isset($gutter)}{$gutter|escape:'htmlall':'UTF-8'}{else}30{/if}">
			{foreach from=$testimonials item=testimonial}
				<div class="pb-testimonial-box">
					<p class="pb-testimonial-comment" >
						{$testimonial->comment|escape:'html':'UTF-8'}
					</p>
					<div class="d-flex justify-content-between align-items-center">
						<div class="d-flex align-items-center">
							{if $show_image}
								<div class="pb-testimonial-img">
									<img class="img-responsive" src="{$testimonial->image|escape:'html':'UTF-8'}" />
								</div>
							{/if}
							<div class="pb-testimonial-author">
								<div class="author-name">{$testimonial->author|escape:'html':'UTF-8'}</div>  
								{if $show_position}<div class="author-position">{$testimonial->position|escape:'html':'UTF-8'}</div>{/if}
							</div>
						</div>
						{if $show_rating}
							<div class="pb-testimonial-rating">
								{for $x=1 to 5}
									<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
										<path fill-rule="evenodd" clip-rule="evenodd" d="M12.3416 7.6L18.3333 8.11667L13.7916 12.0583L15.15 17.9167L9.99996 14.8083L4.84996 17.9167L6.21663 12.0583L1.66663 8.11667L7.65829 7.60834L9.99996 2.08334L12.3416 7.6ZM6.86664 15.1417L9.99997 13.25L13.1416 15.15L12.3083 11.5833L15.075 9.18334L11.425 8.86667L9.99997 5.50001L8.58331 8.85834L4.93331 9.17501L7.69997 11.575L6.86664 15.1417Z" fill="{if $x <= $testimonial->rating}#FF9900{else}#CCCCCC{/if}"/>
									</svg>
								{/for}
							</div>
						{/if}
					</div>
				</div>
			{/foreach}
		</div>
	</div>
{/if}
