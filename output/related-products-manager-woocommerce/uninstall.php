<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prowc_related_products_manager_enabled');
delete_site_option('prowc_related_products_manager_enabled');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('prowc_related_products_manager_relate_by_category');
delete_site_option('prowc_related_products_manager_relate_by_category');
delete_option('prowc_related_products_manager_relate_by_tag');
delete_site_option('prowc_related_products_manager_relate_by_tag');
delete_option('prowc_related_products_manager_hide');
delete_site_option('prowc_related_products_manager_hide');
delete_option('prowc_related_products_manager_exclude_section_enabled');
delete_site_option('prowc_related_products_manager_exclude_section_enabled');
delete_option('prowc_related_products_manager_exclude_taxonomy');
delete_site_option('prowc_related_products_manager_exclude_taxonomy');
delete_option('prowc_related_products_manager_num');
delete_site_option('prowc_related_products_manager_num');
delete_option('prowc_related_products_manager_orderby');
delete_site_option('prowc_related_products_manager_orderby');
delete_option('prowc_related_products_manager_order');
delete_site_option('prowc_related_products_manager_order');
delete_option('prowc_related_products_manager_columns');
delete_site_option('prowc_related_products_manager_columns');
delete_option('prowc_related_products_manager_relate_by_attribute_name');
delete_site_option('prowc_related_products_manager_relate_by_attribute_name');
delete_option('prowc_related_products_manager_relate_by_attribute_value');
delete_site_option('prowc_related_products_manager_relate_by_attribute_value');
delete_option('prowc_related_products_manager_relate_by_attribute_type');
delete_site_option('prowc_related_products_manager_relate_by_attribute_type');
delete_option('prowc_related_products_manager_relate_by_attribute_enabled');
delete_site_option('prowc_related_products_manager_relate_by_attribute_enabled');
delete_option('prowc_related_products_manager_override_cats_and_tags');
delete_site_option('prowc_related_products_manager_override_cats_and_tags');
delete_option('prowc_related_products_manager_limit');
delete_site_option('prowc_related_products_manager_limit');
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');
delete_option('prowc_related_products_manager_orderby_meta_value_meta_key');
delete_site_option('prowc_related_products_manager_orderby_meta_value_meta_key');
delete_option('prowc_related_products_manager_clear_transients_time_limit');
delete_site_option('prowc_related_products_manager_clear_transients_time_limit');
delete_option('prowc_related_products_manager_clear_transients_block');
delete_site_option('prowc_related_products_manager_clear_transients_block');
delete_option('prowc_related_products_manager_relate_per_product_select_type');
delete_site_option('prowc_related_products_manager_relate_per_product_select_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('prowc_related_products_manager_version');
delete_site_option('prowc_related_products_manager_version');
delete_option('prowc_related_products_manager_plugin_notice_nopemaybelater');
delete_site_option('prowc_related_products_manager_plugin_notice_nopemaybelater');
delete_option('prowc_related_products_manager_plugin_notice_remindlater');
delete_site_option('prowc_related_products_manager_plugin_notice_remindlater');
delete_option('prowc_related_products_manager_plugin_reviewtrack');
delete_site_option('prowc_related_products_manager_plugin_reviewtrack');
delete_option('prowc_rpmw_activation_time');
delete_site_option('prowc_rpmw_activation_time');
delete_option('prowc_related_products_manager_plugin_notice_dismissed');
delete_site_option('prowc_related_products_manager_plugin_notice_dismissed');
delete_option('prowc_rpmw_notice_remindlater_rating');
delete_site_option('prowc_rpmw_notice_remindlater_rating');
delete_option('prowc_rpmw_notice_dismissed_rating');
delete_site_option('prowc_rpmw_notice_dismissed_rating');
delete_option('prowc_related_products_manager_plugin_notice_alreadydid');
delete_site_option('prowc_related_products_manager_plugin_notice_alreadydid');

