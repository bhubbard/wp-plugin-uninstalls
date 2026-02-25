-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gam_default_guest_author_name', 'gam_guest_author_intro');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_guest_author_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_guest_author_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_guest_author_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_guest_author_name');

