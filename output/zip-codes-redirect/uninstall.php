<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zipcodes1');
delete_site_option('zipcodes1');
delete_option('zipcodes2');
delete_site_option('zipcodes2');
delete_option('zipcodeswon');
delete_site_option('zipcodeswon');
delete_option('zipcodeslost');
delete_site_option('zipcodeslost');
delete_option('zipcodescheck');
delete_site_option('zipcodescheck');
delete_option('zipredirecturl');
delete_site_option('zipredirecturl');
delete_option('zipsubmitcheck');
delete_site_option('zipsubmitcheck');
delete_option('zipcodesask');
delete_site_option('zipcodesask');
delete_option('zipcodesuse');
delete_site_option('zipcodesuse');
delete_option('zipcodeswait');
delete_site_option('zipcodeswait');
delete_option('zipcodeswrong');
delete_site_option('zipcodeswrong');
delete_option('zipcodesneg');
delete_site_option('zipcodesneg');
delete_option('zipplaceholder');
delete_site_option('zipplaceholder');
delete_option('ziptitle');
delete_site_option('ziptitle');
delete_option('zipsubmittext');
delete_site_option('zipsubmittext');
delete_option('zipcodestime');
delete_site_option('zipcodestime');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

