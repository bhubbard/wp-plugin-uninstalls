-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dn_checkout_extra_fields-fields', 'dn_checkout_extra_fields-last_id', 'dn_checkout_extra_fields-settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dn_checkout_extra_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('dn_checkout_extra_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('dn_checkout_extra_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dn_checkout_extra_fields');

