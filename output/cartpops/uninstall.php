<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('woocommerce_enable_ajax_add_to_cart');
delete_site_option('woocommerce_enable_ajax_add_to_cart');
delete_option('cartpops_settings_upsells_count_per_order_type');
delete_site_option('cartpops_settings_upsells_count_per_order_type');
delete_option('cartpops_settings_email_template_type');
delete_site_option('cartpops_settings_email_template_type');
delete_option('cartpops_settings_email_from_name');
delete_site_option('cartpops_settings_email_from_name');
delete_option('cartpops_settings_email_from_address');
delete_site_option('cartpops_settings_email_from_address');
delete_option('new_admin_email');
delete_site_option('new_admin_email');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('cartpops_settings_upsell_display_table_pagination');
delete_site_option('cartpops_settings_upsell_display_table_pagination');
delete_option('cartpops_settings_free_upsell_per_page_column_count');
delete_site_option('cartpops_settings_free_upsell_per_page_column_count');
delete_option('cartpops_settings_carousel_navigation');
delete_site_option('cartpops_settings_carousel_navigation');
delete_option('cartpops_settings_carousel_auto_play');
delete_site_option('cartpops_settings_carousel_auto_play');
delete_option('cartpops_settings_carousel_pagination');
delete_site_option('cartpops_settings_carousel_pagination');
delete_option('cartpops_settings_carousel_navigation_prevoius_text');
delete_site_option('cartpops_settings_carousel_navigation_prevoius_text');
delete_option('cartpops_settings_carousel_navigation_next_text');
delete_site_option('cartpops_settings_carousel_navigation_next_text');
delete_option('cartpops_settings_carousel_upsell_per_page');
delete_site_option('cartpops_settings_carousel_upsell_per_page');
delete_option('cartpops_settings_carousel_item_margin');
delete_site_option('cartpops_settings_carousel_item_margin');
delete_option('cartpops_settings_carousel_item_per_slide');
delete_site_option('cartpops_settings_carousel_item_per_slide');
delete_option('cartpops_settings_carousel_slide_speed');
delete_site_option('cartpops_settings_carousel_slide_speed');
delete_option('cartpops_settings_product_upsell_heading_label');
delete_site_option('cartpops_settings_product_upsell_heading_label');
delete_option('cartpops_settings_product_upsell_add_to_cart_button_label');
delete_site_option('cartpops_settings_product_upsell_add_to_cart_button_label');
delete_option('cartpops_settings_product_upsell_dropdown_default_option_label');
delete_site_option('cartpops_settings_product_upsell_dropdown_default_option_label');
delete_option('cartpops_settings_dropdown_add_to_cart_behaviour');
delete_site_option('cartpops_settings_dropdown_add_to_cart_behaviour');
delete_option('cartpops_settings_upsell_display_product_linkable');
delete_site_option('cartpops_settings_upsell_display_product_linkable');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');
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
delete_transient('cartpops_potential_issues');
delete_site_transient('cartpops_potential_issues');
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

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cartpops_rule_usage_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cartpops_rule_usage_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cartpops_rule_usage_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cartpops_rule_usage_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price' ) );

