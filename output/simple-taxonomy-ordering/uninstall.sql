-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yikes_simple_taxonomy_ordering_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tax_position');
DELETE FROM wp_usermeta WHERE meta_key IN ('tax_position');
DELETE FROM wp_termmeta WHERE meta_key IN ('tax_position');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tax_position');

