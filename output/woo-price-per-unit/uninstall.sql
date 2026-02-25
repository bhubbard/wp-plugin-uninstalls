-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_mcmp_ppu_free_db_version', '_mcmp_ppu_general_behaviour', '_mcmp_ppu_general', '_mcmp_ppu_single_page_behaviour', '_mcmp_ppu_single_page', '_mcmp_ppu_cart_show_sale_price', '_mcmp_ppu_delete_meta', '_mcmp_ppu_additional_text', '_mcmp_ppu_hide_sale_price', '_mcmp_ppu_var_prefix_text', '_mcmp_ppu_var_hide_max_price', '_mcmp_ppu_var_show_sale_price', '_mcmp_ppu_add_row_css', '_mcmp_ppu_cart_page', '_mcmp_ppu_recalc_text', '_mcmp_ppu_recalc_text_automatic_preposition', '_mcmp_ppu_recalc_text_options', '_mcmp_ppu_recalc_text_separate', '_mcmp_ppu_recalc_text_prefix', '_mcmp_ppu_disable_price_rounding', '_mcmp_ppu_recalc_per_units', '_mcmp_ppu_var_display_option_recalc', '_mcmp_ppu_var_display_option_recalc_forced', 'woocommerce_version', 'active_sitewide_plugins', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mcmp_ppu_general_override', '_mcmp_ppu_single_page_override');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mcmp_ppu_general_override', '_mcmp_ppu_single_page_override');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mcmp_ppu_general_override', '_mcmp_ppu_single_page_override');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mcmp_ppu_general_override', '_mcmp_ppu_single_page_override');

