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
<div class="pb-banner{if $box_class} {$box_class|escape:'htmlall':'UTF-8'}{/if}">
{if $banner_link}
<a href="{$banner_link nofilter}" target="{$target nofilter}">
{/if}
{if $banner}
<div class="pb-banner-img">
	<img src="{$banner|escape:'html':'UTF-8'}" alt="{$alt_text|escape:'htmlall':'UTF-8'}" class="img-responsive" />
</div>
<div class="pb-banner-text pb-banner-{$position|escape:'htmlall':'UTF-8'}">
	{if $subtitle}<span class="pb-banner-subtitle"><span>{$subtitle nofilter}</span></span>{/if}
	{if $title}<{$title_tag} class="pb-banner-title"><span>{$title nofilter}</span></{$title_tag}>{/if}
	{if $description}<div class="pb-banner-desc"><span>{$description nofilter}</span></div>{/if}
	{if $button_text}
		<div class="pb-banner-button btn-icon">
			<span>{$button_text nofilter}</span>
			<i>
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" >
					<path d="M4 12H20" stroke="#4881B7" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
					<path d="M14 6L20 12L14 18" stroke="#4881B7" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
				</svg>
			</i>
		</div>
	{/if}
</div>
{/if}
{if $banner_link}
</a>
{/if}
</div>
