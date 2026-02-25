-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('div-width', 'div-color', 'image-bg-color', 'image-border-color', 'image-border-hover-color', 'category-id', 'number-posts', 'numberposts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail');

