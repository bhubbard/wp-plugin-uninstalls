-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rfi_pa_image', 'rfi_po_image');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_remove_featured_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_remove_featured_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_remove_featured_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_remove_featured_image');

