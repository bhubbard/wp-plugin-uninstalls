<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ced_google_user_login_data');
delete_site_option('ced_google_user_login_data');
delete_option('ced_google_user_token_data');
delete_site_option('ced_google_user_token_data');
delete_option('is_user_created');
delete_site_option('is_user_created');
delete_option('time_during_create_google_token');
delete_site_option('time_during_create_google_token');
delete_option('is_user_logged_in');
delete_site_option('is_user_logged_in');
delete_option('ced_google_account_data');
delete_site_option('ced_google_account_data');
delete_option('ced_google_nav_step');
delete_site_option('ced_google_nav_step');
delete_option('ced_google_another_account_data');
delete_site_option('ced_google_another_account_data');
delete_option('ced_google_GMC_account_data');
delete_site_option('ced_google_GMC_account_data');
delete_option('ced_google_ads_account_data');
delete_site_option('ced_google_ads_account_data');
delete_option('ced_save_merchant_details');
delete_site_option('ced_save_merchant_details');
delete_option('ced_save_ads_details');
delete_site_option('ced_save_ads_details');
delete_option('ced_configuration_details');
delete_site_option('ced_configuration_details');
delete_option('ced_compaign_details');
delete_site_option('ced_compaign_details');
delete_option('ced_google_connected_gmail');
delete_site_option('ced_google_connected_gmail');
delete_option('ced_google_connected_ads_gmail');
delete_site_option('ced_google_connected_ads_gmail');
delete_option('connected_google_ads_id');
delete_site_option('connected_google_ads_id');
delete_option('ced_google_shopping_list_per_page');
delete_site_option('ced_google_shopping_list_per_page');
delete_option('ced_google_shopping_product_id_view');
delete_site_option('ced_google_shopping_product_id_view');
delete_option('ced_google_shopping_profiles');
delete_site_option('ced_google_shopping_profiles');
delete_option('ced_google_shopping_auto_product_syncing');
delete_site_option('ced_google_shopping_auto_product_syncing');
delete_option('ced_google_shopping_auto_existing_product_syncing');
delete_site_option('ced_google_shopping_auto_existing_product_syncing');
delete_option('ced_google_shopping_auto_instant_product_syncing');
delete_site_option('ced_google_shopping_auto_instant_product_syncing');
delete_option('ced_google_shopping_product_automate_setting_data');
delete_site_option('ced_google_shopping_product_automate_setting_data');
delete_option('ced_google_shopping_chunk_products');
delete_site_option('ced_google_shopping_chunk_products');
delete_option('ced_google_shopping_existing_chunk_products');
delete_site_option('ced_google_shopping_existing_chunk_products');
delete_option('ced_google_shopping_cnvrsn_global_site_tags');
delete_site_option('ced_google_shopping_cnvrsn_global_site_tags');
delete_option('ced_google_shopping_claim_and_verify_token');
delete_site_option('ced_google_shopping_claim_and_verify_token');
delete_option('ced_google_shopping_mapped_categories');
delete_site_option('ced_google_shopping_mapped_categories');
delete_option('ced_google_shopping_update_meta_chunk_product');
delete_site_option('ced_google_shopping_update_meta_chunk_product');
delete_option('CedUmbProfileSelectedMetaKeys');
delete_site_option('CedUmbProfileSelectedMetaKeys');
delete_option('google_shopping_mapped_cat');
delete_site_option('google_shopping_mapped_cat');
delete_option('ced_google_shopping_configuration_details');
delete_site_option('ced_google_shopping_configuration_details');

// Delete Transients
delete_transient('time_during_create_google_token');
delete_site_transient('time_during_create_google_token');
delete_transient('ced_google_token_fetched');
delete_site_transient('ced_google_token_fetched');

// Clear Cron Jobs
wp_clear_scheduled_hook('ced_google_shopping_auto_product_syncing');
wp_clear_scheduled_hook('ced_google_shopping_auto_existing_product_syncing');
wp_clear_scheduled_hook('ced_google_shopping_auto_instant_product_syncing');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'ced_product_updated_on_google_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'ced_product_updated_on_google_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'ced_product_updated_on_google_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'ced_product_updated_on_google_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_weight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_weight' ) );

