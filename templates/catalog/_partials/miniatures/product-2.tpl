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
	class="product-miniature js-product-miniature productbox-2"
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
            <div class="category-name">
                <a href="{url entity='category' id=$product.id_category_default}">
                    {$product.category_name|escape:'html':'UTF-8'}
                </a>
            </div>
			{block name='product_name'}
				<h3 class="product-title" itemprop="name"><a class="product-link" href="{$product.canonical_url}">{$product.name}</a></h3>
			{/block}
            <div class="product-reviews">
                {block name='product_reviews'}
                    {hook h='displayProductListReviews' product=$product}
                {/block}
            </div>
            {if $product.main_variants && $gdzSetting.productbox_variant}
				{block name='product_variants'}
					{include file='catalog/_partials/variant-links.tpl' variants=$product.main_variants}
				{/block}
			{/if}
            <div class="product-short-desc">
                {$product.description_short nofilter}
            </div>
            <div class="d-flex align-items-center justify-content-between">
                {if $gdzSetting.productbox_price}
                    {block name='product_price_and_shipping'}
                        {if $product.show_price}
                            <div class="content_price {if $product.has_discount}discount{/if}">
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
                <div class="product-buttons">
                    {if !$configuration.is_catalog && $gdzSetting.productbox_addtocart}
                        {if $product.quantity >= 1}
                            <a
                                href="#"
                                class="ajax-add-to-cart btn product-btn cart-button"
                                title="{l s='Buy now' d='Shop.Theme.Actions'}"
                                data-id-product="{$product.id}"
                                data-minimal-quantity="{$product.minimal_quantity}"
                                data-token="{if isset($static_token) && $static_token}{$static_token}{/if}">
                                {l s='Buy now' d='Shop.Theme.Actions'}
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
                </div>
            </div>
		</div>
	</div>
</div>
