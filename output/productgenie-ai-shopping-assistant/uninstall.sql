-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pgai_website_id', 'pgai_secret_key', 'pgai_sync_reviews', 'pgai_widget_enabled', 'pgai_widget_show_home', 'pgai_widget_show_product', 'pgai_widget_show_shop', 'pgai_widget_show_cart', 'pgai_widget_show_checkout', 'pgai_widget_show_posts', 'pgai_widget_show_pages');
DELETE FROM wp_options WHERE option_name LIKE 'pgai_widget_show_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating');

