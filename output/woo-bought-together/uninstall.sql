-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woobt_settings', 'woobt_localization', 'woobt_rules', 'woocommerce_price_display_suffix', 'woocommerce_cart_redirect_after_add', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'woobt_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woobt_ids', 'woobt_custom_qty', 'woobt_limit_each_min', 'woobt_limit_each_max', 'woobt_separately', 'woobt_sync_qty', 'woobt_disable', 'woobt_selection', 'woobt_layout', 'woobt_position', 'woobt_atc_button', 'woobt_show_this_item', 'woobt_discount', 'woobt_checked_all', 'woobt_limit_each_min_default', 'woobt_before_text', 'woobt_after_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('woobt_ids', 'woobt_custom_qty', 'woobt_limit_each_min', 'woobt_limit_each_max', 'woobt_separately', 'woobt_sync_qty', 'woobt_disable', 'woobt_selection', 'woobt_layout', 'woobt_position', 'woobt_atc_button', 'woobt_show_this_item', 'woobt_discount', 'woobt_checked_all', 'woobt_limit_each_min_default', 'woobt_before_text', 'woobt_after_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('woobt_ids', 'woobt_custom_qty', 'woobt_limit_each_min', 'woobt_limit_each_max', 'woobt_separately', 'woobt_sync_qty', 'woobt_disable', 'woobt_selection', 'woobt_layout', 'woobt_position', 'woobt_atc_button', 'woobt_show_this_item', 'woobt_discount', 'woobt_checked_all', 'woobt_limit_each_min_default', 'woobt_before_text', 'woobt_after_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woobt_ids', 'woobt_custom_qty', 'woobt_limit_each_min', 'woobt_limit_each_max', 'woobt_separately', 'woobt_sync_qty', 'woobt_disable', 'woobt_selection', 'woobt_layout', 'woobt_position', 'woobt_atc_button', 'woobt_show_this_item', 'woobt_discount', 'woobt_checked_all', 'woobt_limit_each_min_default', 'woobt_before_text', 'woobt_after_text');

