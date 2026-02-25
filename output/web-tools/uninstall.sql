-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('web-tools-slug', 'web-tools-default-css');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('webtools_toolname', 'webtools_main_code', 'webtools_toolicon');
DELETE FROM wp_usermeta WHERE meta_key IN ('webtools_toolname', 'webtools_main_code', 'webtools_toolicon');
DELETE FROM wp_termmeta WHERE meta_key IN ('webtools_toolname', 'webtools_main_code', 'webtools_toolicon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('webtools_toolname', 'webtools_main_code', 'webtools_toolicon');

