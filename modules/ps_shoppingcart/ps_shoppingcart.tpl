{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
<div
	class="btn-group blockcart cart-preview dropdown col-auto{if $gdzSetting.addtocart_type !=''} {$gdzSetting.addtocart_type}{/if}"
	id="cart_block" data-refresh-url="{$refresh_url}">
	<a href="#" class="cart-icon" data-toggle="dropdown" data-display="static" aria-expanded="false">
		<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M23.0625 16.5C23.5803 16.5 24 16.0803 24 15.5625V7.125C24 6.60722 23.5803 6.1875 23.0625 6.1875H17.1562V5.15625C17.1562 2.31309 14.8432 0 12 0C9.15684 0 6.84375 2.31309 6.84375 5.15625V6.1875H0.9375C0.419719 6.1875 0 6.60722 0 7.125V20.25C0 22.3177 1.68225 24 3.75 24H20.25C22.3177 24 24 22.3177 24 20.25C24 19.7322 23.5803 19.3125 23.0625 19.3125C22.5447 19.3125 22.125 19.7322 22.125 20.25C22.125 21.2839 21.2839 22.125 20.25 22.125H3.75C2.71613 22.125 1.875 21.2839 1.875 20.25V8.0625H6.84375V11.5781C6.84375 12.0959 7.26347 12.5156 7.78125 12.5156C8.29903 12.5156 8.71875 12.0959 8.71875 11.5781V5.15625C8.71875 3.34697 10.1907 1.875 12 1.875C13.8093 1.875 15.2812 3.34697 15.2812 5.15625V6.1875H11.5312C11.0135 6.1875 10.5938 6.60722 10.5938 7.125C10.5938 7.64278 11.0135 8.0625 11.5312 8.0625H15.2812V11.5781C15.2812 12.0959 15.701 12.5156 16.2188 12.5156C16.7365 12.5156 17.1562 12.0959 17.1562 11.5781V8.0625H22.125V15.5625C22.125 16.0803 22.5447 16.5 23.0625 16.5Z" fill="black"/>
		</svg>
		{if $gdzSetting.addtocart_type == 'circle-filled'}
			{if $cart.products_count > 0}<span class="circle-notify"></span>{/if}
		{else}
			<span class="ajax_cart_quantity">{$cart.products_count}</span>
		{/if}
	</a>
	<span class="cart_block_total ajax_block_cart_total">{$cart.totals.total.value}</span>
	<div class="dropdown-menu shoppingcart-box{if $gdzSetting.cart_type =='sidebar'} shoppingcart-sidebar{/if}">
		<div class="cart-title">{l s='Shopping Cart' d='Shop.Theme.Actions'} ({$cart.products_count})</div>
		{if $cart.products_count == 0}
			<span class="ajax_cart_no_product">{l s='There is no product' d='Shop.Theme.Actions'}</span>
		{else}
			<ul class="list products cart_block_list">
				{foreach from=$cart.products item=product}
					<li>{include 'module:ps_shoppingcart/ps_shoppingcart-product-line.tpl' product=$product}</li>
				{/foreach}
			</ul>
		{/if}
		{if $cart.products_count != 0}
			<div class="billing-info">
				{if $gdzSetting.cart_subtotal == 1}
					{foreach from=$cart.subtotals item="subtotal"}
						{if $subtotal.label}
							<div class="{$subtotal.type} cart-prices-line">
								<span class="label">{$subtotal.label}</span>
								<span class="value">{$subtotal.value}</span>
							</div>
						{/if}
					{/foreach}
				{/if}
				{if $gdzSetting.cart_total == 1}
					<div class="cart-total cart-prices-line">
						<span class="label">{$cart.totals.total.label}</span>
						<span class="value">{$cart.totals.total.value}</span>
					</div>
				{/if}
			</div>
			<div class="cart-button">
				{if $gdzSetting.cart_links && 'checkout'|in_array:$gdzSetting.cart_links}
					<a href="{url entity=order}" class="btn btn-active checkout-btn">
						{l s='Check out' d='Shop.Theme.Actions'}
					</a>
				{/if}
				{if $gdzSetting.cart_links && 'cart'|in_array:$gdzSetting.cart_links}
					<a class="btn btn-active cart-btn" href="{$cart_url}" rel="nofollow">
						{l s='View cart' d='Shop.Theme.Actions'}
					</a>
				{/if}
			</div>
		{/if}
	</div>
</div>
