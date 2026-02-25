-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aiev_activated_Plugin', 'diev_view_type', 'diev_excluded_tax_label', 'diev_included_tax_label', 'diev_font_size', 'diev_font_weight', 'diev_font_color', 'diev_shop_page', 'diev_archive_page', 'diev_single_page');

