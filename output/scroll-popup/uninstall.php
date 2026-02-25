<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tp_ads_popup_title_color');
delete_site_option('tp_ads_popup_title_color');
delete_option('tp_ads_popup_content_color');
delete_site_option('tp_ads_popup_content_color');
delete_option('tp_ads_popup_ads_bg_color');
delete_site_option('tp_ads_popup_ads_bg_color');
delete_option('kento_popup_ads_button_color');
delete_site_option('kento_popup_ads_button_color');
delete_option('kento_popup_ads_texts_color');
delete_site_option('kento_popup_ads_texts_color');
delete_option('tp_ads_popup_adds_sidebar');
delete_site_option('tp_ads_popup_adds_sidebar');
delete_option('tp_ads_popup_ads_title');
delete_site_option('tp_ads_popup_ads_title');
delete_option('tp_ads_popup_screen_bg_img');
delete_site_option('tp_ads_popup_screen_bg_img');
delete_option('tp_ads_popup_adds_desc');
delete_site_option('tp_ads_popup_adds_desc');
delete_option('tp_ads_popup_purchase_btn');
delete_site_option('tp_ads_popup_purchase_btn');
delete_option('tp_ads_popup_ads_button_link');
delete_site_option('tp_ads_popup_ads_button_link');
delete_option('tp_ads_popup_adds_open_page');
delete_site_option('tp_ads_popup_adds_open_page');
delete_option('kento_scroll_popup_screen_content');
delete_site_option('kento_scroll_popup_screen_content');

