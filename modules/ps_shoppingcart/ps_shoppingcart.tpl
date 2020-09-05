{**
 * 2007-2019 PrestaShop and Contributors
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
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2019 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<div id="_desktop_cart">
  <div class="blockcart cart-preview {if $cart.products_count > 0}active{else}inactive{/if}" data-refresh-url="{$refresh_url}">
    <div class="header">
      {if $cart.products_count > 0}
        <a rel="nofollow" href="{$cart_url}">
      {/if}
    <svg class="icon shopping-bag" viewBox="0 0 17.5 21.875"> 
          <use xlink:href="#shopping_bag" x="0" y="0" />
        </svg>
        {* <span class="hidden-sm-down">{l s='Cart' d='Shop.Theme.Checkout'}</span> *}
        <span class="cart-products-count">{$cart.products_count}</span>
      {if $cart.products_count > 0}
        </a>
      {/if}
    </div>
  </div>
</div>

<svg style="display: none;"> 
  <symbol id="shopping_bag">
   <path id="Path_8" data-name="Path 8" d="M17.844,4H15.656a2.194,2.194,0,0,0-2.187,2.188V8.375H8v17.5H25.5V8.375H20.031V6.188A2.194,2.194,0,0,0,17.844,4Zm5.469,6.563V23.688H10.188V10.563ZM15.656,8.375V6.188h2.188V8.375Z" transform="translate(-8 -4)"/>
  </symbol>
</svg>