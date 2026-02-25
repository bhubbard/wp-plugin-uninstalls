-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wordpress_api_key', 'akismet_spam_count', 'bigcommerce_flushed_rewrites', 'active_sitewide_plugins', 'bigcommerce_time_offset', 'bigcommerce_activation_redirect', 'settings_errors', 'bigcommerce_store_url');
DELETE FROM wp_options WHERE option_name LIKE 'schema-%';
DELETE FROM wp_options WHERE option_name LIKE 'generation%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bigcommerce_id', '_wp_attachment_image_alt', '_thumbnail_id', 'sort_order', 'is_visible', 'thumbnail_id', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('bigcommerce_id', '_wp_attachment_image_alt', '_thumbnail_id', 'sort_order', 'is_visible', 'thumbnail_id', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('bigcommerce_id', '_wp_attachment_image_alt', '_thumbnail_id', 'sort_order', 'is_visible', 'thumbnail_id', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bigcommerce_id', '_wp_attachment_image_alt', '_thumbnail_id', 'sort_order', 'is_visible', 'thumbnail_id', 'first_name', 'last_name');

