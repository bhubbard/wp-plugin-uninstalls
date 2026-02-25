<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('js_width');
delete_site_option('js_width');
delete_option('js_height');
delete_site_option('js_height');
delete_option('js_pause');
delete_site_option('js_pause');
delete_option('js_paging');
delete_site_option('js_paging');
delete_option('js_nav');
delete_site_option('js_nav');
delete_option('js_timer');
delete_site_option('js_timer');
delete_option('js_thumbtype');
delete_site_option('js_thumbtype');

