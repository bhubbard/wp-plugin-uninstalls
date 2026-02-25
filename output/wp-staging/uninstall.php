<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpstg_license_status');
delete_site_option('wpstg_license_status');
delete_option('wpstg_rating');
delete_site_option('wpstg_rating');
delete_option('wpstg_beta');
delete_site_option('wpstg_beta');
delete_option('wpstg_settings');
delete_site_option('wpstg_settings');
delete_option('cron');
delete_site_option('cron');
delete_option('wpstg_backup_schedules');
delete_site_option('wpstg_backup_schedules');
delete_option('wpstgpro_version');
delete_site_option('wpstgpro_version');
delete_option('wpstgpro_install_date');
delete_site_option('wpstgpro_install_date');
delete_option('wpstgpro_version_upgraded_from');
delete_site_option('wpstgpro_version_upgraded_from');
delete_option('wpstgpro_upgrade_date');
delete_site_option('wpstgpro_upgrade_date');
delete_option('wpstg_version_upgraded_from');
delete_site_option('wpstg_version_upgraded_from');
delete_option('wpstg_installDate');
delete_site_option('wpstg_installDate');
delete_option('wpstg_analytics_has_consent');
delete_site_option('wpstg_analytics_has_consent');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wpstg_license_key');
delete_site_option('wpstg_license_key');
delete_option('wpstg_optimizer_excluded');
delete_site_option('wpstg_optimizer_excluded');
delete_option('wpstg_is_staging_site');
delete_site_option('wpstg_is_staging_site');
delete_option('wpstg_clone_settings');
delete_site_option('wpstg_clone_settings');
delete_option('wpstg_emails_disabled');
delete_site_option('wpstg_emails_disabled');
delete_option('wpstg_version');
delete_site_option('wpstg_version');
delete_option('wpstg_start_poll');
delete_site_option('wpstg_start_poll');
delete_option('wpstg_hide_beta');
delete_site_option('wpstg_hide_beta');
delete_option('wpstg_RatingDiv');
delete_site_option('wpstg_RatingDiv');
delete_option('wpstg.restore.justRestored');
delete_site_option('wpstg.restore.justRestored');
delete_option('wpstg.restore.justRestored.metadata');
delete_site_option('wpstg.restore.justRestored.metadata');
delete_option('wpstg.backups.doing_upload');
delete_site_option('wpstg.backups.doing_upload');
delete_option('wpstg_existing_clones_beta');
delete_site_option('wpstg_existing_clones_beta');
delete_option('wpstg_analytics_fallback_site_hash');
delete_site_option('wpstg_analytics_fallback_site_hash');
delete_option('fs_accounts');
delete_site_option('fs_accounts');
delete_option('wpstg_connection');
delete_site_option('wpstg_connection');
delete_option('wpstg_rmpermalinks_executed');
delete_site_option('wpstg_rmpermalinks_executed');
delete_option('wpstg_resave_permalinks_executed');
delete_site_option('wpstg_resave_permalinks_executed');
delete_option('wordfenceActivated');
delete_site_option('wordfenceActivated');
delete_option('wpstg_free_install_date');
delete_site_option('wpstg_free_install_date');
delete_option('wpstgDisableLicenseNotice');
delete_site_option('wpstgDisableLicenseNotice');

// Delete Transients
delete_transient('wpstg_activation_redirect');
delete_site_transient('wpstg_activation_redirect');
delete_transient('wpstg.run_daily');
delete_site_transient('wpstg.run_daily');
delete_transient('wpstg.directory_listing.last_checked');
delete_site_transient('wpstg.directory_listing.last_checked');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('wpstg_user_logged_in_status');
delete_site_transient('wpstg_user_logged_in_status');
delete_transient('wpstg.bootstrap.opcache.lastCleared');
delete_site_transient('wpstg.bootstrap.opcache.lastCleared');
delete_transient('wpstg_auto_login_failed');
delete_site_transient('wpstg_auto_login_failed');
delete_transient('wpstg_auto_login_failed_reason');
delete_site_transient('wpstg_auto_login_failed_reason');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpstg_weekly_event');

