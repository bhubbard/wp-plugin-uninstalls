<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('nf_fs_activated');
delete_site_option('nf_fs_activated');
delete_option('nf_activated');
delete_site_option('nf_activated');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('nex-forms-preferences');
delete_site_option('nex-forms-preferences');
delete_option('NFISENVA');
delete_site_option('NFISENVA');
delete_option('nex-forms-other-config');
delete_site_option('nex-forms-other-config');
delete_option('7103891');
delete_site_option('7103891');
delete_option('tmp_csv_export');
delete_site_option('tmp_csv_export');
delete_option('nex-forms-email-config');
delete_site_option('nex-forms-email-config');
delete_option('nex_forms_mailchimp_api_key');
delete_site_option('nex_forms_mailchimp_api_key');
delete_option('nex_forms_get_response_api_key');
delete_site_option('nex_forms_get_response_api_key');
delete_option('nex-forms-script-config');
delete_site_option('nex-forms-script-config');
delete_option('nex-forms-style-config');
delete_site_option('nex-forms-style-config');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '1983017%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('dismiss_nf_notice_wf_02');
delete_site_option('dismiss_nf_notice_wf_02');
delete_option('nex-forms-version');
delete_site_option('nex-forms-version');
delete_option('nf-first-run');
delete_site_option('nf-first-run');
delete_option('nf_set_attachments');
delete_site_option('nf_set_attachments');
delete_option('convert_paypal');
delete_site_option('convert_paypal');
delete_option('nf_interactions_converted');
delete_site_option('nf_interactions_converted');
delete_option('nf_views_converted');
delete_site_option('nf_views_converted');

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

