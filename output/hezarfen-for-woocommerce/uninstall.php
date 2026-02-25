<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hezarfen_enable_district_neighborhood_fields');
delete_site_option('hezarfen_enable_district_neighborhood_fields');
delete_option('hezarfen_checkout_fields_auto_sort');
delete_site_option('hezarfen_checkout_fields_auto_sort');
delete_option('hezarfen_hide_checkout_postcode_fields');
delete_site_option('hezarfen_hide_checkout_postcode_fields');
delete_option('hezarfen_checkout_show_TC_identity_field');
delete_site_option('hezarfen_checkout_show_TC_identity_field');
delete_option('hezarfen_checkout_is_TC_identity_number_field_required');
delete_site_option('hezarfen_checkout_is_TC_identity_number_field_required');
delete_option('hezarfen_encryption_key_generated');
delete_site_option('hezarfen_encryption_key_generated');
delete_option('hezarfen_encryption_tester_text');
delete_site_option('hezarfen_encryption_tester_text');
delete_option('hezarfen_db_version');
delete_site_option('hezarfen_db_version');
delete_option('hezarfen_version');
delete_site_option('hezarfen_version');
delete_option('hezarfen_sms_migration_completed');
delete_site_option('hezarfen_sms_migration_completed');
delete_option('hezarfen_mst_enable_sms_notification');
delete_site_option('hezarfen_mst_enable_sms_notification');
delete_option('hezarfen_mst_notification_provider');
delete_site_option('hezarfen_mst_notification_provider');
delete_option('hezarfen_mst_netgsm_sms_content');
delete_site_option('hezarfen_mst_netgsm_sms_content');
delete_option('hezarfen_sms_rules');
delete_site_option('hezarfen_sms_rules');
delete_option('hezarfen_sms_automation_enabled');
delete_site_option('hezarfen_sms_automation_enabled');
delete_option('hezarfen_pro_db_version');
delete_site_option('hezarfen_pro_db_version');
delete_option('hezarfen_show_hezarfen_checkout_tax_fields');
delete_site_option('hezarfen_show_hezarfen_checkout_tax_fields');
delete_option('hezarfen_v3_roadmap_last_vote');
delete_site_option('hezarfen_v3_roadmap_last_vote');
delete_option('hezarfen_roadmap_votes');
delete_site_option('hezarfen_roadmap_votes');
delete_option('hezarfen_checkout_encryption_key_confirmation');
delete_site_option('hezarfen_checkout_encryption_key_confirmation');
delete_option('hezarfen_encryption_key_recovery_log');
delete_site_option('hezarfen_encryption_key_recovery_log');
delete_option('hezarfen_sort_my_account_fields');
delete_site_option('hezarfen_sort_my_account_fields');
delete_option('woocommerce_checkout_address_2_field');
delete_site_option('woocommerce_checkout_address_2_field');
delete_option('hezarfen_roadmap_notice_dismissed');
delete_site_option('hezarfen_roadmap_notice_dismissed');
delete_option('hezarfen_hide_my_account_postcode_fields');
delete_site_option('hezarfen_hide_my_account_postcode_fields');
delete_option('hezarfen_global_netgsm_credentials');
delete_site_option('hezarfen_global_netgsm_credentials');
delete_option('hezarfen_mss_settings');
delete_site_option('hezarfen_mss_settings');
delete_option('hezarfen_contracts_enabled');
delete_site_option('hezarfen_contracts_enabled');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('hezarfen_hepsijet_show_order_details_on_label');
delete_site_option('hezarfen_hepsijet_show_order_details_on_label');
delete_option('hez_ordermigo_webhook_secret');
delete_site_option('hez_ordermigo_webhook_secret');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'hezarfen_hepsijet_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('hezarfen_hepsijet_consumer_key');
delete_site_option('hezarfen_hepsijet_consumer_key');
delete_option('hezarfen_hepsijet_consumer_secret');
delete_site_option('hezarfen_hepsijet_consumer_secret');
delete_option('intense_kargotakip_ayarlar');
delete_site_option('intense_kargotakip_ayarlar');
delete_option('netgsm_status');
delete_site_option('netgsm_status');
delete_option('netgsm_orderstatus_change_customer_control');
delete_site_option('netgsm_orderstatus_change_customer_control');
delete_option('woocommerce_email_base_color');
delete_site_option('woocommerce_email_base_color');

// Delete Transients
delete_transient('hezarfen_sms_migration_notice');
delete_site_transient('hezarfen_sms_migration_notice');
delete_transient('hezarfen_youtube_videos');
delete_site_transient('hezarfen_youtube_videos');
delete_transient('hepsijet_warehouses_cache');
delete_site_transient('hepsijet_warehouses_cache');

