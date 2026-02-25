-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('frcc_exchange_rates', 'frcc_selected_currencies', 'frcc_show_flag', 'frcc_show_symbol', 'frcc_show_name', 'frcc_show_value', 'frcc_display_format_order', 'frcc_box_width', 'frcc_box_height', 'frcc_last_sync', 'woocommerce_currency', 'frcc_default_currency', 'frcc_show_review_notice');

