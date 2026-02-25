-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('assign_staff_author_total');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpex_author_staff_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpex_author_staff_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpex_author_staff_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpex_author_staff_id');

