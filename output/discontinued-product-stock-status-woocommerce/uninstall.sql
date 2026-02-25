-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('discontinued_show_in_catalog', 'discontinued_greyscale_effect', 'discontinued_enable_custom_message', 'discontinued_global_message', 'discontinued_global_message_border_width', 'discontinued_global_message_border_style', 'discontinued_global_message_border_color', 'discontinued_global_message_border_radius', 'discontinued_global_text_color', 'discontinued_global_background_color', 'discontinued_restore_to_outofstock', 'excluded_categories', 'dpssw_latest_popup_sale_notice', 'dpssw_last_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('show_specific_messsage', '_manage_stock', '_stock', '_backorders', '_stock_discontinued_product', '_stock_status', '_discontinued_product', 'custom_editor_box', 'dpssw_rate_notices', 'dpssw_notices_time', 'related_product_header', '_discontinued_messsage_type', '_variable_discontinued_textarea');
DELETE FROM wp_usermeta WHERE meta_key IN ('show_specific_messsage', '_manage_stock', '_stock', '_backorders', '_stock_discontinued_product', '_stock_status', '_discontinued_product', 'custom_editor_box', 'dpssw_rate_notices', 'dpssw_notices_time', 'related_product_header', '_discontinued_messsage_type', '_variable_discontinued_textarea');
DELETE FROM wp_termmeta WHERE meta_key IN ('show_specific_messsage', '_manage_stock', '_stock', '_backorders', '_stock_discontinued_product', '_stock_status', '_discontinued_product', 'custom_editor_box', 'dpssw_rate_notices', 'dpssw_notices_time', 'related_product_header', '_discontinued_messsage_type', '_variable_discontinued_textarea');
DELETE FROM wp_commentmeta WHERE meta_key IN ('show_specific_messsage', '_manage_stock', '_stock', '_backorders', '_stock_discontinued_product', '_stock_status', '_discontinued_product', 'custom_editor_box', 'dpssw_rate_notices', 'dpssw_notices_time', 'related_product_header', '_discontinued_messsage_type', '_variable_discontinued_textarea');

