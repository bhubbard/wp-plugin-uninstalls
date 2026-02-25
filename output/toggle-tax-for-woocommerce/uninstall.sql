-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gt_tax_btn_state', 'gt_tax_text', 'gt_tax_btn_text', 'gt_tax_btn_toggle_text', 'gt_tax_bg_color', 'gt_tax_text_color', 'woocommerce_tax_display_shop');

