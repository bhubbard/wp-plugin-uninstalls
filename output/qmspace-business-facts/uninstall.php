<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qmsbf_wizard_completed');
delete_site_option('qmsbf_wizard_completed');
delete_option('qmsbf_flush_rewrite_rules');
delete_site_option('qmsbf_flush_rewrite_rules');
delete_option('qmsbf_business');
delete_site_option('qmsbf_business');
delete_option('qmsbf_address');
delete_site_option('qmsbf_address');
delete_option('qmsbf_settings');
delete_site_option('qmsbf_settings');
delete_option('qmsbf_last_updated');
delete_site_option('qmsbf_last_updated');
delete_option('qmsbf_display_fields');
delete_site_option('qmsbf_display_fields');
delete_option('qmsbf_page_id');
delete_site_option('qmsbf_page_id');
delete_option('qmsbf_hours');
delete_site_option('qmsbf_hours');
delete_option('qmsbf_social');
delete_site_option('qmsbf_social');
delete_option('qmsbf_leads');
delete_site_option('qmsbf_leads');
delete_option('qmsbf_analytics');
delete_site_option('qmsbf_analytics');
delete_option('qmsbf_license_key');
delete_site_option('qmsbf_license_key');
delete_option('qmsbf_license_status');
delete_site_option('qmsbf_license_status');
delete_option('qmsbf_license_expires');
delete_site_option('qmsbf_license_expires');
delete_option('qmsbf_activation_id');
delete_site_option('qmsbf_activation_id');
delete_option('qmsbf_license_fingerprint');
delete_site_option('qmsbf_license_fingerprint');

// Delete Transients
delete_transient('qmsbf_license_status_cache');
delete_site_transient('qmsbf_license_status_cache');
delete_transient('qmsbf_page_exists_notice');
delete_site_transient('qmsbf_page_exists_notice');
delete_transient('qmsbf_json_cache');
delete_site_transient('qmsbf_json_cache');
delete_transient('qmsbf_business_data');
delete_site_transient('qmsbf_business_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('qmsbf_deferred_activation');

