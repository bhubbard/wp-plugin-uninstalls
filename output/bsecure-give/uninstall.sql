-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('give_auto_append_country_code', 'give_bsecure_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bsecure_order_ref', 'donor_contact', 'country_calling_code', '_give_donor_contact_number', '_bsecure_order_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bsecure_order_ref', 'donor_contact', 'country_calling_code', '_give_donor_contact_number', '_bsecure_order_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bsecure_order_ref', 'donor_contact', 'country_calling_code', '_give_donor_contact_number', '_bsecure_order_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bsecure_order_ref', 'donor_contact', 'country_calling_code', '_give_donor_contact_number', '_bsecure_order_type');

