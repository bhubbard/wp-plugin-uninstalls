<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reviveso_plugin_dismiss_rating_notice');
delete_site_option('reviveso_plugin_dismiss_rating_notice');
delete_option('reviveso_plugin_no_thanks_rating_notice');
delete_site_option('reviveso_plugin_no_thanks_rating_notice');
delete_option('reviveso_plugin_dismissed_time');
delete_site_option('reviveso_plugin_dismissed_time');
delete_option('reviveso_plugin_installed_time');
delete_site_option('reviveso_plugin_installed_time');
delete_option('reviveso_hide_permalink_notice');
delete_site_option('reviveso_hide_permalink_notice');
delete_option('reviveso_next_scheduled_timestamp');
delete_site_option('reviveso_next_scheduled_timestamp');
delete_option('reviveso_next_eligible_date');
delete_site_option('reviveso_next_eligible_date');
delete_option('reviveso_last_global_cron_run');
delete_site_option('reviveso_last_global_cron_run');
delete_option('reviveso_global_republish_post_ids');
delete_site_option('reviveso_global_republish_post_ids');
delete_option('reviveso_plugin_settings');
delete_site_option('reviveso_plugin_settings');
delete_option('wpar_plugin_settings');
delete_site_option('wpar_plugin_settings');
delete_option('reviveso_show_import_notice');
delete_site_option('reviveso_show_import_notice');
delete_option('wpar_social_credentials');
delete_site_option('wpar_social_credentials');
delete_option('wpar_facebook_accounts_db');
delete_site_option('wpar_facebook_accounts_db');
delete_option('wpar_linkedin_accounts_db');
delete_site_option('wpar_linkedin_accounts_db');
delete_option('wpar_pinterest_accounts_db');
delete_site_option('wpar_pinterest_accounts_db');
delete_option('wpar_twitter_accounts_db');
delete_site_option('wpar_twitter_accounts_db');
delete_option('wpar_tumblr_accounts_db');
delete_site_option('wpar_tumblr_accounts_db');
delete_option('reviveso_social_credentials');
delete_site_option('reviveso_social_credentials');
delete_option('reviveso_facebook_accounts_db');
delete_site_option('reviveso_facebook_accounts_db');
delete_option('reviveso_linkedin_accounts_db');
delete_site_option('reviveso_linkedin_accounts_db');
delete_option('reviveso_pinterest_accounts_db');
delete_site_option('reviveso_pinterest_accounts_db');
delete_option('reviveso_twitter_accounts_db');
delete_site_option('reviveso_twitter_accounts_db');
delete_option('reviveso_tumblr_accounts_db');
delete_site_option('reviveso_tumblr_accounts_db');
delete_option('reviveso_republish_log_history');
delete_site_option('reviveso_republish_log_history');
delete_option('reviveso_dashboard_widget_options');
delete_site_option('reviveso_dashboard_widget_options');

// Delete Transients
delete_transient('reviveso_in_progress');
delete_site_transient('reviveso_in_progress');
delete_transient('reviveso_extensions');
delete_site_transient('reviveso_extensions');
delete_transient('reviveso_import_db_done');
delete_site_transient('reviveso_import_db_done');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

