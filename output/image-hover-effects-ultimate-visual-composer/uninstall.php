<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oxi_flipbox_support_massage');
delete_site_option('oxi_flipbox_support_massage');
delete_option('oxi_addons_pre_loader');
delete_site_option('oxi_addons_pre_loader');
delete_option('oxi_addons_user_permission');
delete_site_option('oxi_addons_user_permission');
delete_option('oxi_addons_font_awesome');
delete_site_option('oxi_addons_font_awesome');
delete_option('oxi_addons_google_font');
delete_site_option('oxi_addons_google_font');
delete_option('oxilab_flip_box_recommended');
delete_site_option('oxilab_flip_box_recommended');
delete_option('oxilab_flip_box_activation_date');
delete_site_option('oxilab_flip_box_activation_date');
delete_option('oxilab_flip_box_nobug');
delete_site_option('oxilab_flip_box_nobug');
delete_option('oxi_addons_font_awesome_version');
delete_site_option('oxi_addons_font_awesome_version');
delete_option('oxilab_flip_box_version');
delete_site_option('oxilab_flip_box_version');
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
delete_transient('oxi_flip_box_activation_redirect');
delete_site_transient('oxi_flip_box_activation_redirect');
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

