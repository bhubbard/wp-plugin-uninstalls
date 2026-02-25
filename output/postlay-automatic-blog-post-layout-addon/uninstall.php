<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('title_color');
delete_site_option('title_color');
delete_option('details_color');
delete_site_option('details_color');
delete_option('ncmbp__pagination_color');
delete_site_option('ncmbp__pagination_color');
delete_option('ncmbp__pagination_Hovercolor');
delete_site_option('ncmbp__pagination_Hovercolor');
delete_option('ncmbp__pagination_Fontcolor');
delete_site_option('ncmbp__pagination_Fontcolor');
delete_option('ncmbp__Btn_bgColor');
delete_site_option('ncmbp__Btn_bgColor');
delete_option('ncmbp__Btn_borderColor');
delete_site_option('ncmbp__Btn_borderColor');
delete_option('ncmbp__Btn_textColor');
delete_site_option('ncmbp__Btn_textColor');
delete_option('ncmbp__Btn_hvfontColor');
delete_site_option('ncmbp__Btn_hvfontColor');
delete_option('ncmbp__Btn_HoverColor');
delete_site_option('ncmbp__Btn_HoverColor');
delete_option('ncmbp__Btn_HoverborderColor');
delete_site_option('ncmbp__Btn_HoverborderColor');
delete_option('ncmbp__blog_column_padding');
delete_site_option('ncmbp__blog_column_padding');
delete_option('ncmbp__blog_posts_number');
delete_site_option('ncmbp__blog_posts_number');
delete_option('ncmbp__column_shadow');
delete_site_option('ncmbp__column_shadow');
delete_option('title_font_size');
delete_site_option('title_font_size');
delete_option('paragraph_font_size');
delete_site_option('paragraph_font_size');
delete_option('ncmbp_font__family');
delete_site_option('ncmbp_font__family');
delete_option('ncmbp__column_borderRadius');
delete_site_option('ncmbp__column_borderRadius');
delete_option('ncmbp__Featureimg_borderRadius');
delete_site_option('ncmbp__Featureimg_borderRadius');
delete_option('ncmbp__Btn_borderRadius');
delete_site_option('ncmbp__Btn_borderRadius');
delete_option('ncmbp__Pagination_borderRadius');
delete_site_option('ncmbp__Pagination_borderRadius');
delete_option('ncmbp_plugin_activation_redirect');
delete_site_option('ncmbp_plugin_activation_redirect');

