<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('mrkv_uamrkpl_promua_shop_name');
delete_site_option('mrkv_uamrkpl_promua_shop_name');
delete_option('mrkv_uamrkpl_promua_company');
delete_site_option('mrkv_uamrkpl_promua_company');
delete_option('mrkv_uamrkpl_promua_global_vendor');
delete_site_option('mrkv_uamrkpl_promua_global_vendor');
delete_option('mrkv_uamrkpl_promua_custom_vendor');
delete_site_option('mrkv_uamrkpl_promua_custom_vendor');
delete_option('mrkv_uamrkpl_promua_vendor_by_attributes');
delete_site_option('mrkv_uamrkpl_promua_vendor_by_attributes');
delete_option('mrkv_uamrkpl_rozetka_vendor_all_possibilities');
delete_site_option('mrkv_uamrkpl_rozetka_vendor_all_possibilities');
delete_option('mrkv_uamrkpl_promua_background_proc_xml_chk');
delete_site_option('mrkv_uamrkpl_promua_background_proc_xml_chk');
delete_option('mrkv_uamrkpl_promua_background_proc_xml_step');
delete_site_option('mrkv_uamrkpl_promua_background_proc_xml_step');
delete_option('mrkv_uamrkpl_rozetka_shop_name');
delete_site_option('mrkv_uamrkpl_rozetka_shop_name');
delete_option('mrkv_uamrkpl_rozetka_company');
delete_site_option('mrkv_uamrkpl_rozetka_company');
delete_option('mrkv_uamrkpl_rozetka_xml_tags_lang');
delete_site_option('mrkv_uamrkpl_rozetka_xml_tags_lang');
delete_option('mrkv_uamrkpl_rozetka_global_vendor');
delete_site_option('mrkv_uamrkpl_rozetka_global_vendor');
delete_option('mrkv_uamrkpl_rozetka_custom_vendor');
delete_site_option('mrkv_uamrkpl_rozetka_custom_vendor');
delete_option('mrkv_uamrkpl_rozetka_vendor_by_attributes');
delete_site_option('mrkv_uamrkpl_rozetka_vendor_by_attributes');
delete_option('mrkv_ua_marketplaces');
delete_site_option('mrkv_ua_marketplaces');
delete_option('mrkv_uamrkpl_collation_option');
delete_site_option('mrkv_uamrkpl_collation_option');
delete_option('mrkv_uamrkpl_rozetka_xml_filename');
delete_site_option('mrkv_uamrkpl_rozetka_xml_filename');
delete_option('mrkv_uamrkpl_promua_xml_filename');
delete_site_option('mrkv_uamrkpl_promua_xml_filename');
delete_option('mrkv_uamrkpl_rozetka_xmlfile_dir');
delete_site_option('mrkv_uamrkpl_rozetka_xmlfile_dir');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('mrkvuamp_update_xml_hook');
wp_clear_scheduled_hook('mrkvuamp_update_xml_hook_promua');
wp_clear_scheduled_hook('mrkvuamp_partial_update_xml_hook_promua');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mrkvuamp_rozetka_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mrkvuamp_rozetka_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mrkvuamp_rozetka_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mrkvuamp_rozetka_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mrkvuamp_promua_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mrkvuamp_promua_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mrkvuamp_promua_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mrkvuamp_promua_title' ) );

