-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('royal_mcp_settings', 'royal_mcp_cache');
DELETE FROM wp_options WHERE option_name LIKE 'royal_mcp_session_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'royal_mcp_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'royal_mcp_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'royal_mcp_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'royal_mcp_dismissed_notices');

