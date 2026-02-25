-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aodsi_si_what_statuses', 'aodsi_si_email_number', 'aodsi_first_si_number');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aodsi_invoice_no', '_shipping_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('aodsi_invoice_no', '_shipping_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('aodsi_invoice_no', '_shipping_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aodsi_invoice_no', '_shipping_phone');

