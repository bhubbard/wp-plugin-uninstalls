<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('panxo_publisher_id');
delete_site_option('panxo_publisher_id');
delete_option('panxo_enabled');
delete_site_option('panxo_enabled');
delete_option('panxo_script_position');
delete_site_option('panxo_script_position');
delete_option('panxo_do_auto_register');
delete_site_option('panxo_do_auto_register');
delete_option('panxo_setup_status');
delete_site_option('panxo_setup_status');
delete_option('panxo_property_id');
delete_site_option('panxo_property_id');
delete_option('panxo_setup_error');
delete_site_option('panxo_setup_error');
delete_option('panxo_user_id');
delete_site_option('panxo_user_id');
delete_option('panxo_registered_at');
delete_site_option('panxo_registered_at');
delete_option('panxo_setup_token');
delete_site_option('panxo_setup_token');
delete_option('panxo_script_hash');
delete_site_option('panxo_script_hash');
delete_option('panxo_format_active');
delete_site_option('panxo_format_active');
delete_option('panxo_format_activated_at');
delete_site_option('panxo_format_activated_at');

// Clear Cron Jobs
wp_clear_scheduled_hook('panxo_check_learning_status');

