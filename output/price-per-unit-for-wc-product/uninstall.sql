-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ppusunarc_prefix', 'ppusunarc_suffix', 'ppusunarc_add_row_css', 'ppusunarc_custom_unit', 'ppusunarc_cart_page', 'woocommerce_weight_unit');

