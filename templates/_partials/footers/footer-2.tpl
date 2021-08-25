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
<div id="footer-main" class="footer-main">
    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-3">
                {include file='_partials/headers/logo.tpl'}
                <ul class="contact">
                    <li>{l s='22 Madison Ave, New York, USA' d='Shop.jmstheme'}</li>
                    <li>{l s='+01 2234 567890' d='Shop.jmstheme'}</li>
                    <li>{l s='zefa.studio@demo.com' d='Shop.jmstheme'}</li>
                </ul>
                {if isset($gdzSetting.footer_payment_image) && $gdzSetting.footer_payment_image}
                    <img src="{$gdzSetting.footer_payment_image}" class="img-fluid" alt="{l s='Payments' d='Shop.jmstheme'}"/>
                {/if}
            </div>
            {block name='hook_footer'}
                {hook h='displayFooter'}
            {/block}
            <div class="col-12 col-lg-3 block col-newsletter">
                <h3 class="h3 block-title">
                    {l s='Instagram' d='Shop.jmstheme'}
                    <i class="feather icon-plus closing"></i>
                    <i class="feather icon-minus opening"></i>
                </h3>
                <div class="block-content">
                    <div class="grid-instagram">
                        <div class="item"><a href="#"><img class="w-100" src="{$urls.theme_assets}img/instagram/1.jpg"/></a></div>
                        <div class="item"><a href="#"><img class="w-100" src="{$urls.theme_assets}img/instagram/2.jpg"/></a></div>
                        <div class="item"><a href="#"><img class="w-100" src="{$urls.theme_assets}img/instagram/3.jpg"/></a></div>  
                        <div class="item"><a href="#"><img class="w-100" src="{$urls.theme_assets}img/instagram/4.jpg"/></a></div>
                        <div class="item"><a href="#"><img class="w-100" src="{$urls.theme_assets}img/instagram/5.jpg"/></a></div>
                        <div class="item"><a href="#"><img class="w-100" src="{$urls.theme_assets}img/instagram/6.jpg"/></a></div>  
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{block name='footer-copyright'}
    <div id="footer-copyright" class="footer-copyright{if $gdzSetting.footer_copyright_class} {$gdzSetting.footer_copyright_class}{/if}">
        <div class="container">
            <div class="row align-items-center">
                {if isset($gdzSetting.footer_copyright_content) && $gdzSetting.footer_copyright_content}
                    <div class="layout-column col">
                        {$gdzSetting.footer_copyright_content nofilter}
                    </div>
                {/if}
                
            </div>
        </div>
    </div>
{/block}
