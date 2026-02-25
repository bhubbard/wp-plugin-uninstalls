-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lh_recover_password-options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lh_recover_password-flag');
DELETE FROM wp_usermeta WHERE meta_key IN ('lh_recover_password-flag');
DELETE FROM wp_termmeta WHERE meta_key IN ('lh_recover_password-flag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lh_recover_password-flag');

