<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pretix_widget_cache_time_max');
delete_site_option('pretix_widget_cache_time_max');
delete_option('pretix_widget_shop_url');
delete_site_option('pretix_widget_shop_url');
delete_option('pretix_widget_version');
delete_site_option('pretix_widget_version');
delete_option('pretix_widget_list_type');
delete_site_option('pretix_widget_list_type');
delete_option('pretix_widget_disable_voucher');
delete_site_option('pretix_widget_disable_voucher');
delete_option('pretix_widget_disable_filter');
delete_site_option('pretix_widget_disable_filter');
delete_option('pretix_widget_language');
delete_site_option('pretix_widget_language');
delete_option('pretix_widget_button_text');
delete_site_option('pretix_widget_button_text');
delete_option('pretix_widget_custom_css');
delete_site_option('pretix_widget_custom_css');
delete_option('pretix_widget_debug_skip_ssl_check');
delete_site_option('pretix_widget_debug_skip_ssl_check');

// Delete Transients
delete_transient('pretix_widget_custom_css');
delete_site_transient('pretix_widget_custom_css');

