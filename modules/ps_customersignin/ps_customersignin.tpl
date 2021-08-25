{**
 * 2007-2019 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *``
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2019 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<div class="user-info btn-group col-auto">
	<a href="#" class="link-dropdown" data-toggle="dropdown" data-display="static">
		<svg width="23" height="23" viewBox="0 0 23 23" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M19.6318 14.8682C18.3792 13.6157 16.8883 12.6885 15.2617 12.1272C17.0039 10.9273 18.1484 8.91915 18.1484 6.64844C18.1484 2.9825 15.1659 0 11.5 0C7.83406 0 4.85156 2.9825 4.85156 6.64844C4.85156 8.91915 5.99613 10.9273 7.73833 12.1272C6.11171 12.6885 4.62084 13.6157 3.36829 14.8682C1.19622 17.0403 0 19.9282 0 23H1.79688C1.79688 17.6497 6.14967 13.2969 11.5 13.2969C16.8503 13.2969 21.2031 17.6497 21.2031 23H23C23 19.9282 21.8038 17.0403 19.6318 14.8682ZM11.5 11.5C8.82486 11.5 6.64844 9.32362 6.64844 6.64844C6.64844 3.97325 8.82486 1.79688 11.5 1.79688C14.1751 1.79688 16.3516 3.97325 16.3516 6.64844C16.3516 9.32362 14.1751 11.5 11.5 11.5Z" fill="black"/>
		</svg>
	</a>
	{if $logged}
		<div id="login" class="dropdown-menu user-info-content{if $gdzSetting.customersignin_type =='sidebar'} user-info-sidebar{/if}{if $gdzSetting.customersignin_class} {$gdzSetting.customersignin_class}{/if}">
			<ul>
				{if $gdzSetting.customersignin_logged_links && 'my-account'|in_array:$gdzSetting.customersignin_logged_links}
					<li><a href="{$my_account_url}">{l s='My Account' d='Shop.Theme.Actions'}</a></li>
				{/if}
				{if $gdzSetting.customersignin_logged_links && 'my-orders'|in_array:$gdzSetting.customersignin_logged_links}
					<li><a href="{$urls.pages.history}">{l s='My Order' d='Shop.Theme.Actions'}</a></li>
				{/if}
				{if $gdzSetting.customersignin_logged_links && 'checkout'|in_array:$gdzSetting.customersignin_logged_links}
					<li><a href="{$link->getPageLink('order', true)}" title="{l s='Checkout' d='Shop.Theme.Customeraccount'}" class="account" rel="nofollow">{l s='Checkout' d='Shop.Theme.Customeraccount'} </a></li>
				{/if}
				{if $gdzSetting.customersignin_logged_links && 'logout'|in_array:$gdzSetting.customersignin_logged_links}
					<li><a class="logout" href="{$logout_url}" rel="nofollow" >{l s='Log out' d='Shop.Theme.Actions'}</a></li>
				{/if}
			</ul>
		</div>
	{else}
	<div id="login" class="dropdown-menu user-info-content{if $gdzSetting.customersignin_type =='sidebar'} user-info-sidebar{/if}{if $gdzSetting.customersignin_class} {$gdzSetting.customersignin_class}{/if}">
		<ul>
			{if $gdzSetting.customersignin_logged_links && 'register'|in_array:$gdzSetting.customersignin_notlogged_links}
				<li><a href="{$urls.pages.register}" title="{l s='Register' d='Shop.Theme.Customeraccount'}" class="account" rel="nofollow">{l s='Register' d='Shop.Theme.Customeraccount'} </a></li>
			{/if}
			{if $gdzSetting.customersignin_logged_links && 'login'|in_array:$gdzSetting.customersignin_notlogged_links}
				<li><a class="login" href="{$my_account_url}" title="{l s='Login' d='Shop.Theme.Customeraccount'}" rel="nofollow" >{l s='Log In' d='Shop.Theme.Actions'}</a></li>
			{/if}
		</ul>
	</div>
	{/if}
</div>

