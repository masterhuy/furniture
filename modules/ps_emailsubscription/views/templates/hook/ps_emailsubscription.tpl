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
<div class="block_newsletter" id="blockEmailSubscription_{$hookName}">
	<form action="{$urls.current_url}#blockEmailSubscription_{$hookName}" method="post">
		<div class="content">
			<div class="input-wrapper">
				<input name="email" type="email" value="{$value}" placeholder="{l s='Enter your email...' d='Shop.Forms.Labels'}" aria-labelledby="block-newsletter-label" required>
			</div>
			<input type="hidden" name="blockHookName" value="{$hookName}" />
			<input type="hidden" name="action" value="0">
			<button class="btn" name="submitNewsletter" type="submit">{l s='Subscribe' d='Shop.Theme.Actions'}</button>
			<button class="btn-svg" name="submitNewsletter" type="submit">
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path fill-rule="evenodd" clip-rule="evenodd" d="M2 12L21 3L12 22L10 14L2 12V12Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
				</svg>
			</button>
			<div class="clearfix"></div>
		</div>
		<div class="messages">
			{if $conditions}
				<p>{$conditions}</p>
			{/if}
			{if isset($id_module)}
				{hook h='displayGDPRConsent' id_module=$id_module}
			{/if}
		</div>
	</form>
</div>
