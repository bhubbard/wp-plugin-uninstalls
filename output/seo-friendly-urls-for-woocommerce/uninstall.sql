-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfufw_options_settings', 'rewrite_rules', 'canonical_link', 'twp_be_options_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_yoast_wpseo_primary_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%';

