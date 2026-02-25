-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_registration_groups_option_handle');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('field_reg_groups');
DELETE FROM wp_usermeta WHERE meta_key IN ('field_reg_groups');
DELETE FROM wp_termmeta WHERE meta_key IN ('field_reg_groups');
DELETE FROM wp_commentmeta WHERE meta_key IN ('field_reg_groups');

