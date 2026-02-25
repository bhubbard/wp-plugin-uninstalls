-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kc-fonts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ebdi_kc_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('ebdi_kc_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('ebdi_kc_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ebdi_kc_ignore_notice');

