-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wwa_init', 'wwa_options', 'wwa_version', 'wwa_log');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('webauthn_only');
DELETE FROM wp_usermeta WHERE meta_key IN ('webauthn_only');
DELETE FROM wp_termmeta WHERE meta_key IN ('webauthn_only');
DELETE FROM wp_commentmeta WHERE meta_key IN ('webauthn_only');

