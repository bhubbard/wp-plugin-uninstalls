-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hag_mcdt_deepl_api_key', 'hag_mcdt_default_languages', 'hag_mcdt_supported_languages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hag_mcdt_is_clone', '_hag_mcdt_sites', '_hag_mcdt_languages');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hag_mcdt_is_clone', '_hag_mcdt_sites', '_hag_mcdt_languages');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hag_mcdt_is_clone', '_hag_mcdt_sites', '_hag_mcdt_languages');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hag_mcdt_is_clone', '_hag_mcdt_sites', '_hag_mcdt_languages');

