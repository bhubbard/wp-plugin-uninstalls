-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ysl_urls', '_ysl_type', '_ysl_nav_color', '_ysl_dot_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ysl_urls', '_ysl_type', '_ysl_nav_color', '_ysl_dot_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ysl_urls', '_ysl_type', '_ysl_nav_color', '_ysl_dot_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ysl_urls', '_ysl_type', '_ysl_nav_color', '_ysl_dot_color');

