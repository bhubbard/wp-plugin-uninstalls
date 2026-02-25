-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wt_wishlist_button_style_settings', 'wt_wishlist_table_settings', 'wt_wishlist_general_settings', 'wt_webtoffee-wishlist_page_id', 'default_value_added');

