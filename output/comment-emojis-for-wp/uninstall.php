<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cefwjc_search');
delete_site_option('cefwjc_search');
delete_option('cefwjc_skintone');
delete_site_option('cefwjc_skintone');
delete_option('cefwjc_position_emojis');
delete_site_option('cefwjc_position_emojis');
delete_option('cefwjc_filter_position');
delete_site_option('cefwjc_filter_position');
delete_option('cefwjc_skintone_style');
delete_site_option('cefwjc_skintone_style');
delete_option('cefwjc_search_position');
delete_site_option('cefwjc_search_position');
delete_option('cefwjc_recent_emojis');
delete_site_option('cefwjc_recent_emojis');

