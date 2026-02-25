<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcefr-customers-role');
delete_site_option('wcefr-customers-role');
delete_option('wcefr_company_invoice');
delete_site_option('wcefr_company_invoice');
delete_option('wcefr_private_invoice');
delete_site_option('wcefr_private_invoice');
delete_option('wcefr_private');
delete_site_option('wcefr_private');
delete_option('wcefr_cf_mandatory');
delete_site_option('wcefr_cf_mandatory');
delete_option('wcefr_fields_check');
delete_site_option('wcefr_fields_check');
delete_option('billing_wcefr_pec_active');
delete_site_option('billing_wcefr_pec_active');
delete_option('billing_wcefr_pa_code_active');
delete_site_option('billing_wcefr_pa_code_active');
delete_option('billing_wcefr_piva_active');
delete_site_option('billing_wcefr_piva_active');
delete_option('billing_wcefr_cf_active');
delete_site_option('billing_wcefr_cf_active');
delete_option('wcefr-suppliers-role');
delete_site_option('wcefr-suppliers-role');
delete_option('wcefr-agt');
delete_site_option('wcefr-agt');
delete_option('wcefr_only_italy');
delete_site_option('wcefr_only_italy');
delete_option('wcefr_cf_only_italy');
delete_site_option('wcefr_cf_only_italy');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_active' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wcefr-number-series-prefix');
delete_site_option('wcefr-number-series-prefix');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-group' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-role' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

