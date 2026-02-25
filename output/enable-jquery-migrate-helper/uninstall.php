<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jqmh_logs');
delete_site_option('jqmh_logs');
delete_option('_jquery_migrate_downgrade_version');
delete_site_option('_jquery_migrate_downgrade_version');
delete_option('_jquery_migrate_public_deprecation_logging');
delete_site_option('_jquery_migrate_public_deprecation_logging');
delete_option('_jquery_migrate_modern_deprecations');
delete_site_option('_jquery_migrate_modern_deprecations');
delete_option('_jquery_migrate_has_auto_downgraded');
delete_site_option('_jquery_migrate_has_auto_downgraded');
delete_option('_jquery_migrate_deprecations_dismissed_notice');
delete_site_option('_jquery_migrate_deprecations_dismissed_notice');
delete_option('_jquery_migrate_dismissed_notice');
delete_site_option('_jquery_migrate_dismissed_notice');
delete_option('jqmh_last_log_time');
delete_site_option('jqmh_last_log_time');
delete_option('_jquery_migrate_previous_deprecations_dismissed_notice');
delete_site_option('_jquery_migrate_previous_deprecations_dismissed_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('enable_jquery_migrate_helper_notification');

