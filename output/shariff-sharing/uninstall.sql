-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shariff_gplus', 'shariff_fb', 'shariff_twitter', 'shariff_linkedin', 'shariff_pinterest', 'shariff_xing', 'shariff_reddit', 'shariff_stumbleupon', 'shariff_whatsapp', 'shariff_email', 'shariff_info', 'shariff_beforeafter', 'shariff_image', 'shariff_hideonoverview', 'shariff_twittervia', 'shariff_infourl', 'shariff_temp', 'shariff_ttl', 'shariff_color', 'shariff_orientation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shariff_enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('shariff_enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('shariff_enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shariff_enabled');

