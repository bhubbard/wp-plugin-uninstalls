<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_mcmp_ppu_free_db_version');
delete_site_option('_mcmp_ppu_free_db_version');
delete_option('_mcmp_ppu_general_behaviour');
delete_site_option('_mcmp_ppu_general_behaviour');
delete_option('_mcmp_ppu_general');
delete_site_option('_mcmp_ppu_general');
delete_option('_mcmp_ppu_single_page_behaviour');
delete_site_option('_mcmp_ppu_single_page_behaviour');
delete_option('_mcmp_ppu_single_page');
delete_site_option('_mcmp_ppu_single_page');
delete_option('_mcmp_ppu_cart_show_sale_price');
delete_site_option('_mcmp_ppu_cart_show_sale_price');
delete_option('_mcmp_ppu_delete_meta');
delete_site_option('_mcmp_ppu_delete_meta');
delete_option('_mcmp_ppu_additional_text');
delete_site_option('_mcmp_ppu_additional_text');
delete_option('_mcmp_ppu_hide_sale_price');
delete_site_option('_mcmp_ppu_hide_sale_price');
delete_option('_mcmp_ppu_var_prefix_text');
delete_site_option('_mcmp_ppu_var_prefix_text');
delete_option('_mcmp_ppu_var_hide_max_price');
delete_site_option('_mcmp_ppu_var_hide_max_price');
delete_option('_mcmp_ppu_var_show_sale_price');
delete_site_option('_mcmp_ppu_var_show_sale_price');
delete_option('_mcmp_ppu_add_row_css');
delete_site_option('_mcmp_ppu_add_row_css');
delete_option('_mcmp_ppu_cart_page');
delete_site_option('_mcmp_ppu_cart_page');
delete_option('_mcmp_ppu_recalc_text');
delete_site_option('_mcmp_ppu_recalc_text');
delete_option('_mcmp_ppu_recalc_text_automatic_preposition');
delete_site_option('_mcmp_ppu_recalc_text_automatic_preposition');
delete_option('_mcmp_ppu_recalc_text_options');
delete_site_option('_mcmp_ppu_recalc_text_options');
delete_option('_mcmp_ppu_recalc_text_separate');
delete_site_option('_mcmp_ppu_recalc_text_separate');
delete_option('_mcmp_ppu_recalc_text_prefix');
delete_site_option('_mcmp_ppu_recalc_text_prefix');
delete_option('_mcmp_ppu_disable_price_rounding');
delete_site_option('_mcmp_ppu_disable_price_rounding');
delete_option('_mcmp_ppu_recalc_per_units');
delete_site_option('_mcmp_ppu_recalc_per_units');
delete_option('_mcmp_ppu_var_display_option_recalc');
delete_site_option('_mcmp_ppu_var_display_option_recalc');
delete_option('_mcmp_ppu_var_display_option_recalc_forced');
delete_site_option('_mcmp_ppu_var_display_option_recalc_forced');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mcmp_ppu_general_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mcmp_ppu_general_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mcmp_ppu_general_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mcmp_ppu_general_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mcmp_ppu_single_page_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mcmp_ppu_single_page_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mcmp_ppu_single_page_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mcmp_ppu_single_page_override' ) );

