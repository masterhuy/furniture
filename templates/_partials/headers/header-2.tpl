{**
 * 2007-2017 PrestaShop
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
 * @copyright 2007-2017 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{if ($gdzSetting.header_topbar == 1)}
    <div id="header-topbar" class="{if $gdzSetting.topbar_class} {$gdzSetting.topbar_class}{/if}">
        <div class="container">
            <div class="row align-items-center">
                <div class="col topbar-content">{$gdzSetting.topbar_content nofilter}</div>
                <div class="col-auto">
                    {widget_block name="ps_languageselector"}
                        {include 'module:ps_languageselector/ps_languageselector-dropdown.tpl'}
                    {/widget_block}
                    {widget_block name="ps_currencyselector"}
                        {include 'module:ps_currencyselector/ps_currencyselector-dropdown.tpl'}
                    {/widget_block}
                    {if ($gdzSetting.customersignin == 1)}
                        {widget_block name="ps_customersignin"}
                            {include 'module:ps_customersignin/ps_customersignin-dropdown.tpl'}
                        {/widget_block}
                    {/if}
                </div>
            </div>
        </div>
    </div>
{/if}
<div id="header-top" class="header-top{if $gdzSetting.header_sticky == 1} header-sticky{/if}{if ($gdzSetting.header_sticky == 1) && ($gdzSetting.header_sticky_effect != '')} {$gdzSetting.header_sticky_effect}{/if}">
    <div class="container">
        <div class="row align-items-center">
            <div class="layout-column col-3 header-left">
                {include file='_partials/headers/logo.tpl'}
            </div>
            <div class="layout-column col-6 col-megamenu">
                <div id="hor-menu" class="{if $gdzSetting.hormenu_class} {$gdzSetting.hormenu_class}{/if} align-center">
                    {widget name="gdz_megamenu" hook='HorMenu'}
                </div>
            </div>
            <div class="layout-column col-3 header-right">
                <div class="row justify-content-end">
                    {if $gdzSetting.search}
                        {if $gdzSetting.search_box_type == 'dropdown'}
                            {widget_block name="gdz_ajaxsearch"}
                                {include 'module:gdz_ajaxsearch/views/templates/hook/gdz_ajaxsearch-dropdown.tpl'}
                            {/widget_block}
                        {elseif $gdzSetting.search_box_type == 'fullwidth'}
                            {widget_block name="gdz_ajaxsearch"}
                                {include 'module:gdz_ajaxsearch/views/templates/hook/gdz_ajaxsearch-fullwidth.tpl'}
                            {/widget_block}
                        {else}
                            {widget_block name="gdz_ajaxsearch"}
                                {include 'module:gdz_ajaxsearch/views/templates/hook/gdz_ajaxsearch-fullscreen.tpl'}
                            {/widget_block}
                        {/if}
                    {/if}
                    {if ($gdzSetting.cart == 1)}
                        {widget_block name="ps_shoppingcart"}
                            {include 'module:ps_shoppingcart/ps_shoppingcart.tpl'}
                        {/widget_block}
                    {/if}
                    <div class="col-auto">
                        <div class="js-open-menu">
                            <span class="icon_menu">
                                <svg width="27" height="17" viewBox="0 0 24 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <rect width="24" height="2" fill="#222222"/>
                                    <rect y="7" width="24" height="2" fill="#222222"/>
                                    <rect y="15" width="24" height="2" fill="#222222"/>
                                </svg>
                            </span>
                            <span class="icon_close">
                                <svg width="27" height="25" viewBox="0 0 27 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <rect width="27" height="25" fill="white"/>
                                    <rect x="4.41422" y="3" width="24" height="2" transform="rotate(45 4.41422 3)" fill="#222222"/>
                                    <rect x="3.41422" y="20" width="24" height="2" transform="rotate(-45 3.41422 20)" fill="#222222"/>
                                </svg>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{if $gdzSetting.search && $gdzSetting.search_box_type != 'dropdown'}
    {widget_block name="gdz_ajaxsearch"}
        {include 'module:gdz_ajaxsearch/views/templates/hook/gdz_ajaxsearch-fullscreen.tpl'}
    {/widget_block}
{/if}


