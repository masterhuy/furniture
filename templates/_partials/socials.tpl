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

{block name='footer-social'}
<ul id="social-links" class="social-links">
    {if isset($gdzSetting.social_facebook) && $gdzSetting.social_facebook != ''}
        <li class="facebook">
            <a class="social-icon social-facebook" href="{$gdzSetting.social_facebook}" target="_blank">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M17 2H14C11.2386 2 9 4.23858 9 7V10H6V14H9V22H13V14H16L17 10H13V7C13 6.44772 13.4477 6 14 6H17V2Z" stroke="#999999" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
            </a>
        </li>
    {/if}
    {if isset($gdzSetting.social_twitter) && $gdzSetting.social_twitter != ''}
        <li class="twitter">
            <a class="social-icon social-twitter" href="{$gdzSetting.social_twitter}" target="_blank">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M23 3.00001C22.0424 3.67549 20.9821 4.19212 19.86 4.53001C18.6264 3.11155 16.6384 2.61412 14.8821 3.28446C13.1258 3.9548 11.9748 5.65031 12 7.53001V8.53001C8.43066 8.62256 5.05203 6.92198 3 4.00001C3 4.00001 -1 13 8 17C5.94053 18.398 3.48716 19.0989 1 19C10 24 21 19 21 7.50001C20.9991 7.22146 20.9723 6.9436 20.92 6.67001C21.9406 5.6635 22.6608 4.39272 23 3.00001Z" stroke="#999999" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
            </a>
        </li>
    {/if}
    {if isset($gdzSetting.social_gplus) && $gdzSetting.social_gplus != ''}
        <li class="google-plus">
            <a class="social-icon social-google" href="{$gdzSetting.social_gplus}" target="_blank"><i class="la la-google" ></i></a>
        </li>
    {/if}
    {if isset($gdzSetting.social_instagram) && $gdzSetting.social_instagram != ''}
        <li class="instagram">
            <a class="social-icon social-instagram" href="{$gdzSetting.social_instagram}" target="_blank">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M2 7C2 4.23858 4.23858 2 7 2H17C19.7614 2 22 4.23858 22 7V17C22 19.7614 19.7614 22 17 22H7C4.23858 22 2 19.7614 2 17V7Z" stroke="#999999" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M16.0001 11.37C16.2532 13.077 15.3831 14.7538 13.8417 15.5297C12.3003 16.3055 10.4351 16.0054 9.2149 14.7852C7.99469 13.5649 7.69455 11.6998 8.47038 10.1584C9.24621 8.61697 10.9231 7.74687 12.6301 7.99999C14.373 8.25846 15.7416 9.62702 16.0001 11.37Z" stroke="#999999" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
            </a>
        </li>
    {/if}
    {if isset($gdzSetting.social_youtube) && $gdzSetting.social_youtube != ''}
        <li class="youtube">
            <a class="social-icon social-youtube" href="{$gdzSetting.social_youtube}" target="_blank"><i class="la la-youtube" ></i></a>
        </li>
    {/if}
    {if isset($gdzSetting.social_pinterest) && $gdzSetting.social_pinterest != ''}
        <li class="pinterest">
            <a class="social-icon social-pinterest" href="{$gdzSetting.social_pinterest}" target="_blank">
                <svg width="18" height="19" viewBox="0 0 18 19">
                    <use xlink:href="#icon-social_icon_1">
                        <symbol id="icon-social_icon_1" fill="none" viewBox="0 0 18 19">
                            <path d="M9 .5a8.885 8.885 0 0 0-3.516.703A9.09 9.09 0 0 0 2.62 3.137 8.975 8.975 0 0 0 .703 6.002 8.758 8.758 0 0 0 0 9.5a8.942 8.942 0 0 0 1.6 5.133 9.129 9.129 0 0 0 1.81 1.933c.703.551 1.47.99 2.303 1.319a17.834 17.834 0 0 1-.07-1.266 5.726 5.726 0 0 1 .105-1.318c.047-.176.123-.504.229-.985.117-.492.234-.996.351-1.511.129-.516.24-.973.334-1.371l.14-.616-.14-.369c-.082-.246-.123-.568-.123-.967 0-.62.158-1.136.475-1.546.316-.422.703-.633 1.16-.633.375 0 .656.129.844.386.187.247.28.54.28.88 0 .386-.093.849-.28 1.388-.176.54-.329 1.078-.457 1.617-.106.446-.024.826.246 1.143.28.316.644.474 1.09.474.398 0 .767-.1 1.107-.298.351-.2.65-.48.896-.844.258-.364.457-.797.598-1.301.152-.504.229-1.06.229-1.67 0-.539-.094-1.031-.282-1.476a3.358 3.358 0 0 0-.773-1.16 3.306 3.306 0 0 0-1.195-.756 3.947 3.947 0 0 0-1.512-.282c-.645 0-1.219.112-1.723.334a4.026 4.026 0 0 0-1.283.88c-.34.362-.604.778-.791 1.247a4.122 4.122 0 0 0-.264 1.46c0 .386.065.767.194 1.142.129.375.287.674.474.896a.234.234 0 0 1 .053.14.219.219 0 0 1 0 .124c-.035.14-.082.334-.14.58-.06.234-.094.38-.106.44-.024.082-.059.134-.106.158-.046.011-.11 0-.193-.035-.562-.258-1.008-.739-1.336-1.442-.328-.703-.492-1.383-.492-2.039 0-.715.129-1.4.387-2.057a5.173 5.173 0 0 1 1.125-1.74c.504-.504 1.125-.902 1.863-1.195.738-.305 1.594-.457 2.566-.457a5.77 5.77 0 0 1 2.18.404c.68.258 1.266.621 1.758 1.09a4.829 4.829 0 0 1 1.178 1.635c.293.633.439 1.324.439 2.074 0 .773-.117 1.5-.351 2.18a5.756 5.756 0 0 1-.967 1.775c-.41.504-.903.902-1.477 1.195a4.079 4.079 0 0 1-1.88.44c-.458 0-.88-.1-1.266-.299-.387-.211-.65-.457-.791-.738l-.246.914a60.04 60.04 0 0 1-.317 1.23 6.23 6.23 0 0 1-.51 1.248c-.222.446-.427.815-.615 1.108.422.129.856.228 1.3.299.446.07.903.105 1.372.105a8.759 8.759 0 0 0 3.498-.703 8.975 8.975 0 0 0 2.865-1.916 9.091 9.091 0 0 0 1.934-2.865A8.885 8.885 0 0 0 18 9.5a8.76 8.76 0 0 0-.703-3.498 8.833 8.833 0 0 0-1.934-2.865 8.832 8.832 0 0 0-2.865-1.934A8.758 8.758 0 0 0 9 .5z" fill="currentColor">
                            </path>
                        </symbol>
                    </use>
                </svg>
            </a>
        </li>
    {/if}
    {if isset($gdzSetting.social_vimeo) && $gdzSetting.social_vimeo != ''}
        <li class="telegram">
            <a class="social-icon social-telegram" href="{$gdzSetting.social_vimeo}" target="_blank">
                <svg width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M22.08 9.99994C19.81 2.40994 16.54 0.649945 9.00002 2.91995C1.46002 5.18994 -0.349983 8.45994 1.92002 15.9999C4.19002 23.5399 7.46002 25.3499 15 23.0799C22.54 20.8099 24.35 17.5399 22.08 9.99994Z" stroke="#999999" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M12.5701 6.98999L16.1501 17.39" stroke="#999999" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M7.8501 8.61011L11.4301 19.0101" stroke="#999999" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M16.39 8.8501L5.98999 12.4301" stroke="#999999" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M18.01 13.5701L7.60999 17.1501" stroke="#999999" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
            </a>
        </li>
    {/if}
    {if isset($gdzSetting.social_linkedin) && $gdzSetting.social_linkedin != ''}
        <li class="linkedin">
            <a class="social-icon social-linkedin" href="{$gdzSetting.social_linkedin}" target="_blank"><i class="la la-linkedin" ></i></a>
        </li>
    {/if}
</ul>
{/block}
