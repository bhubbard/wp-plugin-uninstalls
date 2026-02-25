<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jp_customer_form_fields');
delete_site_option('jp_customer_form_fields');
delete_option('jp_use_custom_theme');
delete_site_option('jp_use_custom_theme');
delete_option('jp_token_options');
delete_site_option('jp_token_options');
delete_option('jp_connected_user');
delete_site_option('jp_connected_user');

// Delete Transients
delete_transient('jp_form_submitted');
delete_site_transient('jp_form_submitted');
delete_transient('jp_trades');
delete_site_transient('jp_trades');
delete_transient('jp_states');
delete_site_transient('jp_states');
delete_transient('jp_countries');
delete_site_transient('jp_countries');
delete_transient('jp_referrals');
delete_site_transient('jp_referrals');

// Clear Cron Jobs
wp_clear_scheduled_hook('jp_token_refresh_hook');
wp_clear_scheduled_hook('jp_customer_sync_hook');
wp_clear_scheduled_hook('jb_customer_sync_hook');

