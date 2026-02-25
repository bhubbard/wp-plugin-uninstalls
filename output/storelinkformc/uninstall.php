<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_mail_smtp');
delete_site_option('wp_mail_smtp');
delete_option('storelinkformc_force_link');
delete_site_option('storelinkformc_force_link');
delete_option('storelinkformc_cf_zone_id');
delete_site_option('storelinkformc_cf_zone_id');
delete_option('storelinkformc_cf_api_token');
delete_site_option('storelinkformc_cf_api_token');
delete_option('storelinkformc_checkout_fields');
delete_site_option('storelinkformc_checkout_fields');
delete_option('storelinkformc_username_policy');
delete_site_option('storelinkformc_username_policy');
delete_option('slmc_tpl_link_subject');
delete_site_option('slmc_tpl_link_subject');
delete_option('slmc_tpl_link_html');
delete_site_option('slmc_tpl_link_html');
delete_option('storelinkformc_sync_products');
delete_site_option('storelinkformc_sync_products');
delete_option('storelinkformc_api_token');
delete_site_option('storelinkformc_api_token');
delete_option('storelinkformc_default_linked_role');
delete_site_option('storelinkformc_default_linked_role');
delete_option('storelinkformc_product_roles_map');
delete_site_option('storelinkformc_product_roles_map');
delete_option('storelinkformc_needs_lscache_exclusion');
delete_site_option('storelinkformc_needs_lscache_exclusion');
delete_option('storelinkformc_needs_rocket_exclusion');
delete_site_option('storelinkformc_needs_rocket_exclusion');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'slmc_dismiss_smtp_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'slmc_dismiss_smtp_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'slmc_dismiss_smtp_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'slmc_dismiss_smtp_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'minecraft_player' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'minecraft_player' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'minecraft_player' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'minecraft_player' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_minecraft_username' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_minecraft_username' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_minecraft_username' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_minecraft_username' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_minecraft_gift' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_minecraft_gift' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_minecraft_gift' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_minecraft_gift' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_minecraft_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_minecraft_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_minecraft_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_minecraft_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_slmc_target_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_slmc_target_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_slmc_target_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_slmc_target_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'storelinkformc_dismiss_checkout_blocks_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'storelinkformc_dismiss_checkout_blocks_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'storelinkformc_dismiss_checkout_blocks_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'storelinkformc_dismiss_checkout_blocks_notice' ) );

