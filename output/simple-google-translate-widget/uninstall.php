<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_simple_google_translate');
delete_site_option('widget_simple_google_translate');
delete_option('installredirect_do_activation_redirect');
delete_site_option('installredirect_do_activation_redirect');
delete_option('wp_sgt_WidgetTitle');
delete_site_option('wp_sgt_WidgetTitle');
delete_option('wp_sgt_sctext_wlink');
delete_site_option('wp_sgt_sctext_wlink');

