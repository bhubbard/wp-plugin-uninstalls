-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acoplw_dp_list_status', 'acoplw_show_on_outStck', 'acoplw_wc_badge_status', 'acoplw_enable_title_hook', 'acoplw_wrapper_class', 'acoplw_enable_loop_hook', 'acoplw_enable_shop_hook', 'acoplw_detail_page_badge', 'acoplw_jquery_status', 'acoplw_customHooks', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('badge_start_date', 'badge_end_date', 'badge_style_options', 'badge_label_options', 'badge_status', 'badge_schedules', 'badge_position_options', 'badge_preview_options', 'badge_use_pschedule', 'badge_selected_list', 'badge_product_list', 'list_type', 'product_list_config', 'discount_value', 'discount_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('badge_start_date', 'badge_end_date', 'badge_style_options', 'badge_label_options', 'badge_status', 'badge_schedules', 'badge_position_options', 'badge_preview_options', 'badge_use_pschedule', 'badge_selected_list', 'badge_product_list', 'list_type', 'product_list_config', 'discount_value', 'discount_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('badge_start_date', 'badge_end_date', 'badge_style_options', 'badge_label_options', 'badge_status', 'badge_schedules', 'badge_position_options', 'badge_preview_options', 'badge_use_pschedule', 'badge_selected_list', 'badge_product_list', 'list_type', 'product_list_config', 'discount_value', 'discount_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('badge_start_date', 'badge_end_date', 'badge_style_options', 'badge_label_options', 'badge_status', 'badge_schedules', 'badge_position_options', 'badge_preview_options', 'badge_use_pschedule', 'badge_selected_list', 'badge_product_list', 'list_type', 'product_list_config', 'discount_value', 'discount_type');

