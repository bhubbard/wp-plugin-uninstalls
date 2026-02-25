<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tickers_title');
delete_site_option('tickers_title');
delete_option('per_page_item');
delete_site_option('per_page_item');
delete_option('post_type');
delete_site_option('post_type');
delete_option('title_color');
delete_site_option('title_color');
delete_option('title_bg_color');
delete_site_option('title_bg_color');
delete_option('items_color');
delete_site_option('items_color');
delete_option('items_bg_color');
delete_site_option('items_bg_color');
delete_option('items_hover_color');
delete_site_option('items_hover_color');
delete_option('effect_type');
delete_site_option('effect_type');
delete_option('controls');
delete_site_option('controls');

