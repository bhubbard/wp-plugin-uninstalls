-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('digital99_consumer_key', 'digital99_consumer_secret', 'digital99_store_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_order_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_order_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_order_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_order_key');

