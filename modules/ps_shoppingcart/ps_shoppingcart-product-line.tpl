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
<div class="row align-items-center">
	{if $product.cover.bySize.cart_default.url}
		<a class="cart-product-image layout-column" href="{$product.url}" title="{$product.name|escape:'html':'UTF-8'}">
			<img alt="{$product.name|escape:'html':'UTF-8'}" src="{$product.cover.bySize.cart_default.url}" class="preview img-responsive" data-full-size-image-url = "{$product.cover.large.url}">
		</a>
	{/if}
	<div class="product-info layout-column">
		<a class="product-link" href="{$product.url}" title="{$product.name|escape:'html':'UTF-8'}">
			{$product.name}
		</a>
		<div class="content_price">
			<span class="price new">{$product.price}</span> 
		</div>
		<div class="quantity">
			<span>x</span> 
			<span class="quantity">{$product.quantity}</span>
			<a class="remove-from-cart remove_link" rel="nofollow" href="{$product.remove_from_cart_url}" data-link-action="remove-from-cart" title="{l s='Remove from cart' d='Shop.Theme.Actions'}" >
				<svg width="26" height="26" viewBox="0 0 26 26" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path fill-rule="evenodd" clip-rule="evenodd" d="M15.7084 3.25L16.7917 4.33333H20.5834V6.5H5.41675V4.33333H9.20841L10.2917 3.25H15.7084ZM6.50009 20.5833C6.50009 21.775 7.47509 22.75 8.66676 22.75H17.3334C18.5251 22.75 19.5001 21.775 19.5001 20.5833V7.58334H6.50009V20.5833ZM8.66675 9.75H17.3334V20.5833H8.66675V9.75Z" fill="#888888"/>
				</svg>
			</a>
		</div>
	</div>
</div>
