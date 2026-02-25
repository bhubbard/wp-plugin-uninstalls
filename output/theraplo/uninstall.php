<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('theraplo_config');
delete_site_option('theraplo_config');
delete_option('theraplo_override_bookero');
delete_site_option('theraplo_override_bookero');
delete_option('theraplo_hide_bookero');
delete_site_option('theraplo_hide_bookero');
delete_option('theraplo_auto_insert');
delete_site_option('theraplo_auto_insert');
delete_option('theraplo_show_welcome_notice');
delete_site_option('theraplo_show_welcome_notice');
delete_option('theraplo_custom_css');
delete_site_option('theraplo_custom_css');

// Delete Transients
delete_transient('theraplo_specialists_list');
delete_site_transient('theraplo_specialists_list');
delete_transient('theraplo_js_status');
delete_site_transient('theraplo_js_status');

// Clear Cron Jobs
wp_clear_scheduled_hook('theraplo_daily_cleanup');

