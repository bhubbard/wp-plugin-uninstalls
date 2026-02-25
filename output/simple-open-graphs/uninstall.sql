-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sog_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sog_title', 'sog_description', 'sog_post_url', 'sog_image_url', 'sog_site_name', 'sog_page_disable');
DELETE FROM wp_usermeta WHERE meta_key IN ('sog_title', 'sog_description', 'sog_post_url', 'sog_image_url', 'sog_site_name', 'sog_page_disable');
DELETE FROM wp_termmeta WHERE meta_key IN ('sog_title', 'sog_description', 'sog_post_url', 'sog_image_url', 'sog_site_name', 'sog_page_disable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sog_title', 'sog_description', 'sog_post_url', 'sog_image_url', 'sog_site_name', 'sog_page_disable');

