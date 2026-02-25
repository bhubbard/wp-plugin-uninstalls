-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enable_advanced_payment', 'advance_payment_type', 'advance_payment_value');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_advance_payment');
DELETE FROM wp_usermeta WHERE meta_key IN ('_advance_payment');
DELETE FROM wp_termmeta WHERE meta_key IN ('_advance_payment');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_advance_payment');

