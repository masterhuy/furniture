{**
 * 2007-2019 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
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
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2019 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<div
	class="product-miniature js-product-miniature productbox-1"
	data-id-product="{$product.id_product}"
	data-id-product-attribute="{$product.id_product_attribute}"
	itemscope itemtype="http://schema.org/Product">
	<div class="product-preview thumbnail-container">
		{block name='product_thumbnail'}
			<div class="product-thumbnail">
				{if $product.cover}
					<a
						href="{$product.url}"
						class="product-image{if $gdzSetting.productbox_hover == 'swap-image' && isset($product.images.1) && $product.images.1} swap-image{else} blur-image{/if}"
					>
						<img class="img-responsive product-img1{if $gdzSetting.carousel_lazyload} owl-lazy{/if}"
							{if $gdzSetting.carousel_lazyload}data-src="{$product.cover.bySize.home_default.url}"{else}
								src = "{$product.cover.bySize.home_default.url}"
							{/if}
							alt = "{$product.cover.legend}"
							title="{$product.name|escape:'html':'UTF-8'}"
							data-full-size-image-url = "{$product.cover.large.url}"
						/>
						{if $gdzSetting.productbox_hover == 'swap-image' && isset($product.images.1) && $product.images.1}
							<img class="img-responsive product-img2"
								src = "{$product.images.1.bySize.home_default.url}"
								alt = "{$product.images.1.legend}"
								title="{$product.name|escape:'html':'UTF-8'}"
								data-full-size-image-url = "{$product.images.1.large.url}"
							/>
						{/if}
					</a>
				{else}
					<a href="{$product.url}" class="product-image">
						<img src="{$urls.no_picture_image.bySize.home_default.url}" />
					</a>
				{/if}
				{include file='catalog/_partials/product-flags.tpl'}
			</div>
		{/block}

		<div class="product-info">
			{if $gdzSetting.productbox_category}
				<div class="category-name">
					<a href="{url entity='category' id=$product.id_category_default}">
						{$product.category_name|escape:'html':'UTF-8'}
					</a>
				</div>
			{/if}
			{block name='product_name'}
				<h3 class="product-title" itemprop="name"><a class="product-link" href="{$product.canonical_url}">{$product.name}</a></h3>
			{/block}
			{if $gdzSetting.productbox_price}
				{block name='product_price_and_shipping'}
					{if $product.show_price}
					<div class="content_price">
						{hook h='displayProductPriceBlock' product=$product type="before_price"}
						{if $product.has_discount}
							{hook h='displayProductPriceBlock' product=$product type="old_price"}
							<span class="old price">{$product.regular_price}</span>
						{/if}
						<span class="price new">{$product.price}</span>
						{hook h='displayProductPriceBlock' product=$product type='unit_price'}
						{hook h='displayProductPriceBlock' product=$product type='weight'}
					</div>
					{/if}
				{/block}
			{/if}
			{if $product.main_variants && $gdzSetting.productbox_variant}
				{block name='product_variants'}
					{include file='catalog/_partials/variant-links.tpl' variants=$product.main_variants}
				{/block}
			{/if}
			<div class="product-short-desc">
				{$product.description_short nofilter}
			</div>
    		<div class="product-buttons">
				{if $gdzSetting.productbox_wishlist}
					<a href="#" title="{l s='Add to wishlist' d='Shop.Theme.Actions'}" class="addToWishlist btn-icon" onclick="WishlistCart('wishlist_block_list', 'add', '{$product.id_product|escape:'html'}', false, 1); return false;" data-id-product="{$product.id_product|escape:'html'}">
						<svg width="25" height="25" viewBox="0 0 25 25" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M24.9827 8.30721C24.9758 8.22003 24.9681 8.15321 24.9612 8.10733C24.6115 4.14676 21.7058 1.01187 17.9348 1.01187C15.7501 1.01187 13.7537 2.04569 12.4464 3.72166C11.1697 2.03441 9.24923 1.01187 7.07612 1.01187C3.31797 1.01187 0.418988 4.12552 0.0457301 8.12983C0.0385549 8.17649 0.0313309 8.23331 0.0247414 8.30013C-0.0390545 8.94707 0.014003 9.80429 0.260547 10.8487C0.784386 13.0678 2.00935 15.089 3.73706 16.6552L11.7825 23.7289C12.1743 24.0734 12.7607 24.0747 13.1541 23.7319L21.2585 16.6698C23.1687 14.6818 24.304 12.8935 24.7542 10.8328C24.98 9.79789 25.0326 8.94629 24.9827 8.30721ZM22.7195 10.3886C22.3655 12.0093 21.4235 13.4931 19.8225 15.1644L12.4734 21.5633L5.12397 15.1017C3.71426 13.8236 2.71242 12.1705 2.28742 10.3703C2.09447 9.55286 2.05572 8.92623 2.10179 8.45935L2.11649 8.3546C2.38436 5.33916 4.46512 3.09449 7.07612 3.09449C9.01992 3.09449 10.6737 4.27996 11.4774 6.18393C11.8356 7.03236 13.0379 7.03236 13.3961 6.18393C14.1837 4.31813 15.9547 3.09449 17.9348 3.09449C20.5459 3.09449 22.6266 5.33931 22.8944 8.35563C22.9016 8.41625 22.9036 8.43304 22.9064 8.4695C22.9408 8.91002 22.9008 9.55774 22.7195 10.3886Z" fill="#666666"/>
						</svg>
						<span>{l s='Add to wishlist' d='Shop.Theme.Actions'}</span>
					</a>
				{/if}
				{if !$configuration.is_catalog && $gdzSetting.productbox_addtocart}
					{if $product.quantity >= 1}
						<a
							href="#"
							class="ajax-add-to-cart btn product-btn cart-button"
							title="{l s='Add to cart' d='Shop.Theme.Actions'}"
							{if $product.quantity < 1} disabled {/if}
							data-id-product="{$product.id}"
							data-minimal-quantity="{$product.minimal_quantity}"
							data-token="{if isset($static_token) && $static_token}{$static_token}{/if}">
							<span>{l s='Add to cart' d='Shop.Theme.Actions'}</span>
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M0.000244141 1.16406C0.000244141 1.44531 0.0939941 1.6875 0.281494 1.89062C0.484619 2.07812 0.726807 2.17188 1.00806 2.17188H3.49243L6.98462 14.9688C7.06274 15.1406 7.18774 15.2969 7.35962 15.4375C7.54712 15.5625 7.75806 15.625 7.99243 15.625H19.7112C19.9143 15.625 20.1096 15.5703 20.2971 15.4609C20.4846 15.3359 20.6096 15.1719 20.6721 14.9688L23.8127 5.40625C23.9065 5.10938 23.8596 4.82031 23.6721 4.53906C23.5002 4.24219 23.2268 4.09375 22.8518 4.09375H10.5237C10.2424 4.09375 10.0002 4.19531 9.79712 4.39844C9.60962 4.58594 9.51587 4.82031 9.51587 5.10156C9.51587 5.38281 9.60962 5.625 9.79712 5.82812C10.0002 6.01562 10.2424 6.10938 10.5237 6.10938H21.4924L19.0081 13.6328H8.69556L5.20337 0.859375C5.15649 0.625 5.03931 0.445313 4.85181 0.320312C4.67993 0.195312 4.47681 0.132812 4.24243 0.132812H1.00806C0.726807 0.132812 0.484619 0.234375 0.281494 0.4375C0.0939941 0.640625 0.000244141 0.882812 0.000244141 1.16406ZM6.67993 20.4766C6.67993 21.4141 7.00024 22.2109 7.64087 22.8672C8.29712 23.5234 9.10181 23.8516 10.0549 23.8516C10.9924 23.8516 11.7893 23.5234 12.4456 22.8672C13.1174 22.2109 13.4534 21.4141 13.4534 20.4766C13.4534 19.5391 13.1174 18.7422 12.4456 18.0859C11.7893 17.4141 10.9924 17.0781 10.0549 17.0781C9.13306 17.0781 8.33618 17.4141 7.66431 18.0859C7.00806 18.7422 6.67993 19.5391 6.67993 20.4766ZM8.64868 20.4062C8.64868 20.0312 8.78149 19.7031 9.04712 19.4219C9.32837 19.1406 9.66431 19 10.0549 19C10.4612 19 10.7971 19.1406 11.0627 19.4219C11.344 19.7031 11.4846 20.0312 11.4846 20.4062C11.4846 20.7969 11.344 21.1328 11.0627 21.4141C10.7815 21.6953 10.4456 21.8359 10.0549 21.8359C9.66431 21.8359 9.32837 21.6953 9.04712 21.4141C8.78149 21.1328 8.64868 20.7969 8.64868 20.4062ZM14.3206 20.4766C14.3206 21.4141 14.6487 22.2109 15.3049 22.8672C15.9612 23.5234 16.7581 23.8516 17.6956 23.8516C18.6331 23.8516 19.4299 23.5234 20.0862 22.8672C20.7581 22.2109 21.094 21.4141 21.094 20.4766C21.094 19.5391 20.7581 18.7422 20.0862 18.0859C19.4299 17.4141 18.6331 17.0781 17.6956 17.0781C16.7581 17.0781 15.9612 17.4141 15.3049 18.0859C14.6487 18.7422 14.3206 19.5391 14.3206 20.4766ZM16.2893 20.4062C16.2893 20.0312 16.4299 19.7031 16.7112 19.4219C16.9924 19.1406 17.3206 19 17.6956 19C18.1018 19 18.4377 19.1406 18.7034 19.4219C18.969 19.7031 19.1018 20.0312 19.1018 20.4062C19.1018 20.7969 18.9612 21.1328 18.6799 21.4141C18.3987 21.6953 18.0706 21.8359 17.6956 21.8359C17.2893 21.8359 16.9534 21.6953 16.6877 21.4141C16.4221 21.1328 16.2893 20.7969 16.2893 20.4062Z" fill="white"/>
							</svg>
						</a>
						{else}
						<a
							href="#"
							class="product-btn btn disabled"
							disabled
							title="{l s='Sold out' d='Shop.Theme.Actions'}"
							data-id-product="{$product.id}"
							data-minimal-quantity="{$product.minimal_quantity}">
							{l s='Sold out' d='Shop.Theme.Actions'}
						</a>	
					{/if}
				{/if}
				{if $gdzSetting.productbox_quickview}
					<a href="#" title="{l s='Quick view' d='Shop.Theme.Actions'}" data-link-action="quickview" class="btn-icon quick-view">
						<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
							<g clip-path="url(#clip0)">
								<path d="M5.33718 22.0006C3.93176 22.0006 2.60454 21.4437 1.58056 20.4197C0.508358 19.3475 -0.0516958 17.9426 0.00347595 16.4639C0.0604954 14.9366 0.750443 13.4696 1.99877 12.2212L4.24637 9.96449C4.58127 9.62817 5.12538 9.62705 5.4617 9.96199C5.79797 10.2969 5.79913 10.841 5.46419 11.1773L3.21538 13.4354C1.39304 15.2577 1.22108 17.6295 2.79597 19.2044C4.3709 20.7794 6.74273 20.6074 8.56374 18.7863L11.6526 15.6974C12.5889 14.7612 13.1052 13.6921 13.1457 12.606C13.1829 11.6104 12.8011 10.6599 12.0708 9.92959C11.8261 9.68493 11.5554 9.47731 11.2661 9.31252C10.8537 9.07761 10.7098 8.55284 10.9447 8.14047C11.1796 7.72805 11.7044 7.58419 12.1167 7.81906C12.5395 8.05986 12.9329 8.36107 13.2862 8.71431C14.3584 9.78651 14.9185 11.1914 14.8633 12.6701C14.8063 14.1974 14.1163 15.6645 12.868 16.9128L9.77911 20.0017C8.53074 21.25 7.0637 21.9399 5.53647 21.997C5.46995 21.9993 5.40339 22.0006 5.33718 22.0006ZM11.0549 13.8608C11.2898 13.4483 11.1459 12.9236 10.7335 12.6887C10.4442 12.5239 10.1734 12.3163 9.92877 12.0717C8.35388 10.4967 8.52584 8.12491 10.3469 6.30381L13.4358 3.21497C15.257 1.39391 17.6288 1.22191 19.2036 2.7968C20.7785 4.37168 20.6065 6.74351 18.7842 8.56586L16.5354 10.8239C16.2004 11.1602 16.2015 11.7043 16.5379 12.0392C16.8741 12.3742 17.4182 12.373 17.7532 12.0367L20.0008 9.77993C21.2491 8.53161 21.939 7.06453 21.9961 5.53734C22.0513 4.05857 21.4912 2.65367 20.419 1.58147C19.3468 0.509232 17.9412 -0.0507354 16.4631 0.00435038C14.9359 0.0613698 13.4688 0.751317 12.2205 1.99964L9.13161 5.08849C7.88329 6.33681 7.19338 7.80389 7.13632 9.33108C7.08115 10.8099 7.6412 12.2148 8.7134 13.287C9.06664 13.6402 9.46011 13.9414 9.88288 14.1822C10.0171 14.2586 10.1632 14.295 10.3074 14.295C10.6062 14.295 10.8965 14.1389 11.0549 13.8608Z" fill="#666666"/>
							</g>
							<defs>
								<clipPath id="clip0">
									<rect width="22" height="22" fill="white"/>
								</clipPath>
							</defs>
						</svg>
						<span>{l s='Quick view' d='Shop.Theme.Actions'}</span>
					</a>
				{/if}
    		</div>
		</div>
	</div>
</div>


