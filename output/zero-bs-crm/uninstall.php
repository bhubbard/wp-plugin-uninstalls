<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zbs-global-perf-test');
delete_site_option('zbs-global-perf-test');
delete_option('jpcrm_do_redirect');
delete_site_option('jpcrm_do_redirect');
delete_option('jpcrm_wizard_completed');
delete_site_option('jpcrm_wizard_completed');
delete_option('zbs_wizard_run');
delete_site_option('zbs_wizard_run');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'zbs_initopts_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('zbsmigrationblockerrors');
delete_site_option('zbsmigrationblockerrors');
delete_option('zbs_db_creation_errors');
delete_site_option('zbs_db_creation_errors');
delete_option('jpcrm_hide_woo_promo');
delete_site_option('jpcrm_hide_woo_promo');
delete_option('jpcrm_hide_track_notice');
delete_site_option('jpcrm_hide_track_notice');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'zbs_closers_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('zbsfeedback');
delete_site_option('zbsfeedback');
delete_option('zbs-crm-notifications');
delete_site_option('zbs-crm-notifications');
delete_option('jpcrm_skip_wizard');
delete_site_option('jpcrm_skip_wizard');
delete_option('zbs_db_migration_253');
delete_site_option('zbs_db_migration_253');
delete_option('zbs_db_migration_300');
delete_site_option('zbs_db_migration_300');
delete_option('zbsmigrations');
delete_site_option('zbsmigrations');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'zbsmigration%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('zbsmigrationsdal');
delete_site_option('zbsmigrationsdal');
delete_option('zbsmigrationpreloadcatch');
delete_site_option('zbsmigrationpreloadcatch');
delete_option('jpcrm_tasknotificationtemplate');
delete_site_option('jpcrm_tasknotificationtemplate');
delete_option('jpcrm_invnotificationtemplate');
delete_site_option('jpcrm_invnotificationtemplate');
delete_option('zbs_db_migration_253_errors');
delete_site_option('zbs_db_migration_253_errors');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'jpcrm_package_fail_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_feature_alert' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('jpcrm_flush_rewrite_flag');
delete_site_option('jpcrm_flush_rewrite_flag');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_bk' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('zbs_temp_legacy_update_msg');
delete_site_option('zbs_temp_legacy_update_msg');
delete_option('jetpack_protect_active');
delete_site_option('jetpack_protect_active');
delete_option('jetpack_offline_mode');
delete_site_option('jetpack_offline_mode');
delete_option('wpcom_public_coming_soon');
delete_site_option('wpcom_public_coming_soon');
delete_option('jpcrm_client_portal_rewrite_rules_changed');
delete_site_option('jpcrm_client_portal_rewrite_rules_changed');
delete_option('jpcrm_woosync_52_mig');
delete_site_option('jpcrm_woosync_52_mig');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('jpcrm_woosync_52_mig_backup');
delete_site_option('jpcrm_woosync_52_mig_backup');

// Delete Transients
delete_transient('jpcrm_extension_messages');
delete_site_transient('jpcrm_extension_messages');
delete_transient('jpcrm-license-modal');
delete_site_transient('jpcrm-license-modal');
delete_transient('jpcrm_defer_wizard');
delete_site_transient('jpcrm_defer_wizard');
delete_transient('crm-segment-condition-missing-arg');
delete_site_transient('crm-segment-condition-missing-arg');
delete_transient('zbs-migration-general-errors');
delete_site_transient('zbs-migration-general-errors');
delete_transient('zbs-nag-license-key-now');
delete_site_transient('zbs-nag-license-key-now');
delete_transient('zbs-nag-extension-update-now');
delete_site_transient('zbs-nag-extension-update-now');
delete_transient('jpcrm_crm_snapshot');
delete_site_transient('jpcrm_crm_snapshot');
delete_transient('jetpack_is_single_user');
delete_site_transient('jetpack_is_single_user');
delete_transient('clientportalpro.incompatible.version.deactivated');
delete_site_transient('clientportalpro.incompatible.version.deactivated');
delete_transient('woosync.syncsite.paused.errors');
delete_site_transient('woosync.syncsite.paused.errors');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_jpcrm_woo_connect_token_%', '_site_transient_jpcrm_woo_connect_token_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('jpcrm_woo_newly_authenticated');
delete_site_transient('jpcrm_woo_newly_authenticated');
delete_transient('woosync.conflict.deactivated');
delete_site_transient('woosync.conflict.deactivated');

// Clear Cron Jobs
wp_clear_scheduled_hook('jpcrm_cron_watcher');
wp_clear_scheduled_hook('jpcrm_mailpoet_sync');
wp_clear_scheduled_hook('jpcrm_woosync_sync');
wp_clear_scheduled_hook('zerobscrm_woosync_hourly_sync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'settings_dashboard_sales_funnel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'settings_dashboard_sales_funnel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'settings_dashboard_sales_funnel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'settings_dashboard_sales_funnel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'settings_dashboard_revenue_chart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'settings_dashboard_revenue_chart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'settings_dashboard_revenue_chart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'settings_dashboard_revenue_chart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'settings_dashboard_recent_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'settings_dashboard_recent_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'settings_dashboard_recent_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'settings_dashboard_recent_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'settings_dashboard_latest_contacts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'settings_dashboard_latest_contacts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'settings_dashboard_latest_contacts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'settings_dashboard_latest_contacts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zbs-hide-wp-menus' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zbs-hide-wp-menus' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zbs-hide-wp-menus' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zbs-hide-wp-menus' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zbs_customer_invoice_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zbs_customer_invoice_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zbs_customer_invoice_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zbs_customer_invoice_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zbs_inv_sendattachments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zbs_inv_sendattachments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zbs_inv_sendattachments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zbs_inv_sendattachments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zbs_customer_invoices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zbs_customer_invoices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zbs_customer_invoices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zbs_customer_invoices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zbs-hopscotch-tour' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zbs-hopscotch-tour' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zbs-hopscotch-tour' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zbs-hopscotch-tour' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'metaboxhidden_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'metaboxhidden_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'metaboxhidden_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'metaboxhidden_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_login' ) );

