-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aithenticate_license_key', 'aithenticate_license_email', 'aithenticate_fixed_ai_post_types', 'aithenticate_version');
DELETE FROM wp_options WHERE option_name LIKE '%_up';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_content_type', '_aithenticate_enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('_content_type', '_aithenticate_enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('_content_type', '_aithenticate_enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_content_type', '_aithenticate_enabled');

