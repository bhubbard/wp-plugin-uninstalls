-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mg_upc_post_stats', 'mg_upc_store_vote_ip', 'mg_upc_store_vote_anonymize_ip', 'mg_upc_flush_rewrite', 'mg_upc_single_page', 'mg_upc_archive_enable', 'mg_upc_item_per_page', 'mg_upc_list_per_page', 'mg_upc_ajax_load', 'mg_upc_share_buttons_client', 'mg_upc_db_version', 'mg_upc_single_page_mode', 'mg_upc_archive_filter_author', 'mg_upc_archive_filter_type', 'mg_upc_archive_item_per_page', 'mg_upc_single_title', 'mg_upc_archive_document_title', 'mg_upc_archive_item_template_desc', 'mg_upc_archive_item_template_user', 'mg_upc_archive_item_template_meta', 'mg_upc_archive_item_template', 'mg_upc_archive_item_template_cols_xxl', 'mg_upc_archive_item_template_cols_xl', 'mg_upc_archive_item_template_cols_lg', 'mg_upc_archive_item_template_cols_md', 'mg_upc_archive_item_template_cols_sm', 'mg_upc_archive_item_template_cols_xs', 'mg_upc_archive_item_template_thumbs_xxl', 'mg_upc_archive_item_template_thumbs_xl', 'mg_upc_archive_item_template_thumbs_lg', 'mg_upc_archive_item_template_thumbs_md', 'mg_upc_archive_item_template_thumbs_sm', 'mg_upc_archive_item_template_thumbs_xs', 'mg_upc_button_position', 'mg_upc_my_orderby', 'mg_upc_my_order', 'mg_upc_api_item_per_page', 'mg_upc_show_my_lists_menu', 'mg_upc_button_position_product', 'mg_upc_loop_button_position_product', 'mg_upc_modal_show_price', 'mg_upc_modal_show_stock', 'woocommerce_tax_display_shop', 'mg_upc_page_show_price', 'mg_upc_page_show_stock', 'mg_upc_page_add_to_cart', 'mg_upc_woo_activated', 'mg_upc_anh_notices', 'mg_upc_texts', 'mg_upc_maintenance_timed_job');
DELETE FROM wp_options WHERE option_name LIKE 'mg_upc_type_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mg_upc_listed');
DELETE FROM wp_usermeta WHERE meta_key IN ('mg_upc_listed');
DELETE FROM wp_termmeta WHERE meta_key IN ('mg_upc_listed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mg_upc_listed');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mg_upc_listed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mg_upc_listed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mg_upc_listed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mg_upc_listed_%';

