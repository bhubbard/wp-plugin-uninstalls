-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lofty_idx_needs_rewrite_flush', 'lofty_idx_secret_key', 'lofty_idx_listing_page_id', 'lofty_idx_listing_detail_page_id', 'lofty_idx_sold_listing_page_id', 'lofty_idx_sold_detail_page_id', 'lofty_idx_db_version', 'lofty_idx_custom_css', 'lofty_idx_custom_js', 'lofty_idx_custom_html', 'widget_lofty_widget_quick_search', 'lofty_idx_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';

