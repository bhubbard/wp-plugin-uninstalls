<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sm_rewrite_done');
delete_site_option('sm_rewrite_done');
delete_option('sm_options');
delete_site_option('sm_options');
delete_option('sm_show_beta_banner');
delete_site_option('sm_show_beta_banner');
delete_option('sm_beta_banner_discarded_on');
delete_site_option('sm_beta_banner_discarded_on');
delete_option('sm_beta_banner_discarded_count');
delete_site_option('sm_beta_banner_discarded_count');
delete_option('sm_beta_notice_dismissed_from_wp_admin');
delete_site_option('sm_beta_notice_dismissed_from_wp_admin');
delete_option('sm_user_consent');
delete_site_option('sm_user_consent');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('sm_hide_auto_update_banner');
delete_site_option('sm_hide_auto_update_banner');
delete_option('wpseo');
delete_site_option('wpseo');
delete_option('aioseo_options');
delete_site_option('aioseo_options');
delete_option('jetpack_active_modules');
delete_site_option('jetpack_active_modules');
delete_option('gsg_indexnow-is_valid_api_key');
delete_site_option('gsg_indexnow-is_valid_api_key');
delete_option('gsg_indexnow-admin_api_key');
delete_site_option('gsg_indexnow-admin_api_key');
delete_option('sm_status');
delete_site_option('sm_status');
delete_option('sm_disabe_other_plugin');
delete_site_option('sm_disabe_other_plugin');
delete_option('sm_beta_opt_in');
delete_site_option('sm_beta_opt_in');
delete_option('sm_cpages');
delete_site_option('sm_cpages');

// Delete Transients
delete_transient('sm_ping_post_id');
delete_site_transient('sm_ping_post_id');

// Clear Cron Jobs
wp_clear_scheduled_hook('sm_ping_daily');
wp_clear_scheduled_hook('sm_ping');

