-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bppf_plugin_do_activation_redirect', 'csf_demo_mode', '_bppfsettings_');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bppfshortcode_', '_bportfolio_');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bppfshortcode_', '_bportfolio_');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bppfshortcode_', '_bportfolio_');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bppfshortcode_', '_bportfolio_');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

