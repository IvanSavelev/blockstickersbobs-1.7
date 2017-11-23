{*
* 2007-2017 PrestaShop
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
* @author    PrestaShop SA <contact@prestashop.com>
* @copyright 2007-2017 PrestaShop SA
* @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{if isset($stickers)}
    <div class="stickers_bobs" style="display: none">
        {foreach from=$stickers item=sticker}
            <div class="box_sticker dinamic_stickers_{$sticker.id_sticker}
				{if $sticker.type_sticker==0} box_sticker_right {/if}
				{if $sticker.type_sticker==1} box_sticker_left {/if}"
					style="
						{if $sticker.type_position_y=='T'}
								top: {$sticker.y_sticker}px;
						{else}
								bottom: {$sticker.y_sticker}px;
						{/if}

						{if $sticker.type_position_x=='L'}
								left:{$sticker.x_sticker}px;
						{else}
								right: {$sticker.x_sticker}px;
						{/if}

						{if $sticker.type_sticker==3}
							width:100%;
						{else}
							width:{$sticker.width_sticker}px;
						{/if}
							height:{$sticker.height_sticker}px;
						{if $sticker.type_sticker==2 || $sticker.type_sticker==5}
							line-height: {$sticker.height_sticker}px;
						{/if}

					">

				{if $sticker.type_sticker==0}
					<span class="angle_right_sticker {$sticker.class_color_corners}"
						  title="{$sticker.title}"
						  style="
							color: {$sticker.color_font_sticker};
							font-size: {$sticker.size_font_sticker}px;
							background: {$sticker.color_background_sticker}
							">
								{$sticker.text_sticker}
					</span>
				{/if}

				{if $sticker.type_sticker==1}
					<span class="angle_left_sticker {$sticker.class_color_corners}"
						  title="{$sticker.title}"
						  style="
						color: {$sticker.color_font_sticker};
						font-size: {$sticker.size_font_sticker}px;
						background: {$sticker.color_background_sticker}
						">
							{$sticker.text_sticker}
					 </span>
				{/if}

				{if $sticker.type_sticker==2}
					<div class="label_sticker"
						 title="{$sticker.title}"
						 style="
						 color: {$sticker.color_font_sticker};
						 font-size: {$sticker.size_font_sticker}px;
						 background: {$sticker.color_background_sticker};
						 ">
							{$sticker.text_sticker}
					</div>
				{/if}

				{if $sticker.type_sticker==3}
					<div class="horizontal_strip_sticker"
						 title="{$sticker.title}"
						 style="
						color: {$sticker.color_font_sticker};
						font-size: {$sticker.size_font_sticker}px;
						line-height: {$sticker.height_sticker}px;
						background: {$sticker.color_background_sticker}
						">
							{$sticker.text_sticker}
					</div>
				{/if}

				{if $sticker.type_sticker==4}
					<img class="image_sticker "
						title="{$sticker.title}"
						style="
						border-radius: 0px;
						background: none;
						width:{$sticker.width_sticker}px;
						height:{$sticker.height_sticker}px;
						"
						src="{$sticker.current_url_img}"
						alt=""
						>
				{/if}
				{if $sticker.type_sticker==5}
					<div class="label_stylized_sticker"
						 title="{$sticker.title}"
						 style="
								 color: {$sticker.color_font_sticker};
								 font-size: {$sticker.size_font_sticker}px;
								 background: {$sticker.color_background_sticker};
								 ">
						{$sticker.text_sticker}
					</div>
				{/if}
            </div>
        {/foreach}
    </div>
{/if}




