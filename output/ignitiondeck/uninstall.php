<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('id_modules');
delete_site_option('id_modules');
delete_option('is_id_pro');
delete_site_option('is_id_pro');
delete_option('wiz-configure');
delete_site_option('wiz-configure');
delete_option('idf_commerce_platform');
delete_site_option('idf_commerce_platform');
delete_option('id_purchase_default');
delete_site_option('id_purchase_default');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('md_receipt_settings');
delete_site_option('md_receipt_settings');
delete_option('idc_global_currency');
delete_site_option('idc_global_currency');
delete_option('recently_activated');
delete_site_option('recently_activated');
delete_option('helix_settings');
delete_site_option('helix_settings');
delete_option('idhelix_waitlist_length');
delete_site_option('idhelix_waitlist_length');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('woocommerce_view_order_page_id');
delete_site_option('woocommerce_view_order_page_id');
delete_option('woocommerce_edit_address_page_id');
delete_site_option('woocommerce_edit_address_page_id');
delete_option('id_recaptcha_settings');
delete_site_option('id_recaptcha_settings');
delete_option('idf_transfer_key');
delete_site_option('idf_transfer_key');
delete_option('idf_wc_checkout_url');
delete_site_option('idf_wc_checkout_url');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('idf_registered');
delete_site_option('idf_registered');
delete_option('idf_regsitered_post');
delete_site_option('idf_regsitered_post');
delete_option('id_account');
delete_site_option('id_account');
delete_option('idf_license_name');
delete_site_option('idf_license_name');
delete_option('is_idc_licensed');
delete_site_option('is_idc_licensed');
delete_option('is_id_basic');
delete_site_option('is_id_basic');
delete_option('idf_license_type');
delete_site_option('idf_license_type');
delete_option('license_expiry');
delete_site_option('license_expiry');
delete_option('license_item_id');
delete_site_option('license_item_id');
delete_option('license_post_id');
delete_site_option('license_post_id');
delete_option('idcf_updated');
delete_site_option('idcf_updated');
delete_option('idf_license_entry_options');
delete_site_option('idf_license_entry_options');
delete_option('id_license_key');
delete_site_option('id_license_key');
delete_option('license_payment_id');
delete_site_option('license_payment_id');
delete_option('idf_key');
delete_site_option('idf_key');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('md_dash_settings');
delete_site_option('md_dash_settings');
delete_option('idf_current_version');
delete_site_option('idf_current_version');
delete_option('idf_key_transfer');
delete_site_option('idf_key_transfer');
delete_option('idf_install_flags');
delete_site_option('idf_install_flags');

// Delete Transients
delete_transient('id_modules');
delete_site_transient('id_modules');
delete_transient('idf_transient_cache');
delete_site_transient('idf_transient_cache');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('idf_plugin_versions');
delete_site_transient('idf_plugin_versions');
delete_transient('idf_license_name');
delete_site_transient('idf_license_name');
delete_transient('is_id_pro');
delete_site_transient('is_id_pro');
delete_transient('is_idc_licensed');
delete_site_transient('is_idc_licensed');
delete_transient('is_id_basic');
delete_site_transient('is_id_basic');

// Clear Cron Jobs
wp_clear_scheduled_hook('schedule_twicedaily_idf_cron');
wp_clear_scheduled_hook('idf_schedule_install');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ign_project_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ign_project_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ign_project_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ign_project_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'idhelix_waitlist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'idhelix_waitlist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'idhelix_waitlist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'idhelix_waitlist' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'enable_creator' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'enable_creator' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'enable_creator' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'enable_creator' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ide_user_projects' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ide_user_projects' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ide_user_projects' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ide_user_projects' ) );

