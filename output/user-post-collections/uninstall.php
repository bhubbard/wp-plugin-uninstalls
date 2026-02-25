<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mg_upc_post_stats');
delete_site_option('mg_upc_post_stats');
delete_option('mg_upc_store_vote_ip');
delete_site_option('mg_upc_store_vote_ip');
delete_option('mg_upc_store_vote_anonymize_ip');
delete_site_option('mg_upc_store_vote_anonymize_ip');
delete_option('mg_upc_flush_rewrite');
delete_site_option('mg_upc_flush_rewrite');
delete_option('mg_upc_single_page');
delete_site_option('mg_upc_single_page');
delete_option('mg_upc_archive_enable');
delete_site_option('mg_upc_archive_enable');
delete_option('mg_upc_item_per_page');
delete_site_option('mg_upc_item_per_page');
delete_option('mg_upc_list_per_page');
delete_site_option('mg_upc_list_per_page');
delete_option('mg_upc_ajax_load');
delete_site_option('mg_upc_ajax_load');
delete_option('mg_upc_share_buttons_client');
delete_site_option('mg_upc_share_buttons_client');
delete_option('mg_upc_db_version');
delete_site_option('mg_upc_db_version');
delete_option('mg_upc_single_page_mode');
delete_site_option('mg_upc_single_page_mode');
delete_option('mg_upc_archive_filter_author');
delete_site_option('mg_upc_archive_filter_author');
delete_option('mg_upc_archive_filter_type');
delete_site_option('mg_upc_archive_filter_type');
delete_option('mg_upc_archive_item_per_page');
delete_site_option('mg_upc_archive_item_per_page');
delete_option('mg_upc_single_title');
delete_site_option('mg_upc_single_title');
delete_option('mg_upc_archive_document_title');
delete_site_option('mg_upc_archive_document_title');
delete_option('mg_upc_archive_item_template_desc');
delete_site_option('mg_upc_archive_item_template_desc');
delete_option('mg_upc_archive_item_template_user');
delete_site_option('mg_upc_archive_item_template_user');
delete_option('mg_upc_archive_item_template_meta');
delete_site_option('mg_upc_archive_item_template_meta');
delete_option('mg_upc_archive_item_template');
delete_site_option('mg_upc_archive_item_template');
delete_option('mg_upc_archive_item_template_cols_xxl');
delete_site_option('mg_upc_archive_item_template_cols_xxl');
delete_option('mg_upc_archive_item_template_cols_xl');
delete_site_option('mg_upc_archive_item_template_cols_xl');
delete_option('mg_upc_archive_item_template_cols_lg');
delete_site_option('mg_upc_archive_item_template_cols_lg');
delete_option('mg_upc_archive_item_template_cols_md');
delete_site_option('mg_upc_archive_item_template_cols_md');
delete_option('mg_upc_archive_item_template_cols_sm');
delete_site_option('mg_upc_archive_item_template_cols_sm');
delete_option('mg_upc_archive_item_template_cols_xs');
delete_site_option('mg_upc_archive_item_template_cols_xs');
delete_option('mg_upc_archive_item_template_thumbs_xxl');
delete_site_option('mg_upc_archive_item_template_thumbs_xxl');
delete_option('mg_upc_archive_item_template_thumbs_xl');
delete_site_option('mg_upc_archive_item_template_thumbs_xl');
delete_option('mg_upc_archive_item_template_thumbs_lg');
delete_site_option('mg_upc_archive_item_template_thumbs_lg');
delete_option('mg_upc_archive_item_template_thumbs_md');
delete_site_option('mg_upc_archive_item_template_thumbs_md');
delete_option('mg_upc_archive_item_template_thumbs_sm');
delete_site_option('mg_upc_archive_item_template_thumbs_sm');
delete_option('mg_upc_archive_item_template_thumbs_xs');
delete_site_option('mg_upc_archive_item_template_thumbs_xs');
delete_option('mg_upc_button_position');
delete_site_option('mg_upc_button_position');
delete_option('mg_upc_my_orderby');
delete_site_option('mg_upc_my_orderby');
delete_option('mg_upc_my_order');
delete_site_option('mg_upc_my_order');
delete_option('mg_upc_api_item_per_page');
delete_site_option('mg_upc_api_item_per_page');
delete_option('mg_upc_show_my_lists_menu');
delete_site_option('mg_upc_show_my_lists_menu');
delete_option('mg_upc_button_position_product');
delete_site_option('mg_upc_button_position_product');
delete_option('mg_upc_loop_button_position_product');
delete_site_option('mg_upc_loop_button_position_product');
delete_option('mg_upc_modal_show_price');
delete_site_option('mg_upc_modal_show_price');
delete_option('mg_upc_modal_show_stock');
delete_site_option('mg_upc_modal_show_stock');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('mg_upc_page_show_price');
delete_site_option('mg_upc_page_show_price');
delete_option('mg_upc_page_show_stock');
delete_site_option('mg_upc_page_show_stock');
delete_option('mg_upc_page_add_to_cart');
delete_site_option('mg_upc_page_add_to_cart');
delete_option('mg_upc_woo_activated');
delete_site_option('mg_upc_woo_activated');
delete_option('mg_upc_anh_notices');
delete_site_option('mg_upc_anh_notices');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mg_upc_type_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mg_upc_texts');
delete_site_option('mg_upc_texts');

// Delete Transients
delete_transient('mg_upc_maintenance_timed_job');
delete_site_transient('mg_upc_maintenance_timed_job');

// Clear Cron Jobs
wp_clear_scheduled_hook('mg_upc_cron_maintenance');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mg_upc_listed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mg_upc_listed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mg_upc_listed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mg_upc_listed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'mg_upc_listed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'mg_upc_listed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'mg_upc_listed_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'mg_upc_listed_%' ) );

