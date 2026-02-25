-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dry_ice', 'mjeperiship_signature_required', 'mjeperiship_declared_value', 'shipping_class', 'mjeperiship_dry_ice');
DELETE FROM wp_usermeta WHERE meta_key IN ('dry_ice', 'mjeperiship_signature_required', 'mjeperiship_declared_value', 'shipping_class', 'mjeperiship_dry_ice');
DELETE FROM wp_termmeta WHERE meta_key IN ('dry_ice', 'mjeperiship_signature_required', 'mjeperiship_declared_value', 'shipping_class', 'mjeperiship_dry_ice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dry_ice', 'mjeperiship_signature_required', 'mjeperiship_declared_value', 'shipping_class', 'mjeperiship_dry_ice');

