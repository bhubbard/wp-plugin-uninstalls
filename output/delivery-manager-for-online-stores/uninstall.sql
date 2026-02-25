-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dmfos_enable_weekend', 'dmfos_enable_date_field', 'dmfos_delivery_fee');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dmfos_delivery_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('dmfos_delivery_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('dmfos_delivery_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dmfos_delivery_date');

