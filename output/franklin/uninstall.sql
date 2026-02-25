-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sites-select-search', 'digital_search_settings', 'contact_settings');
DELETE FROM wp_options WHERE option_name LIKE 'featured-post--%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_post_format_value', 'featured-video');
DELETE FROM wp_usermeta WHERE meta_key IN ('_post_format_value', 'featured-video');
DELETE FROM wp_termmeta WHERE meta_key IN ('_post_format_value', 'featured-video');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_post_format_value', 'featured-video');

