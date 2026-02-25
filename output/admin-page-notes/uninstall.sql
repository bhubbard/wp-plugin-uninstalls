-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('display_notes_pages', 'display_notes_posts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gb_admin_note');
DELETE FROM wp_usermeta WHERE meta_key IN ('gb_admin_note');
DELETE FROM wp_termmeta WHERE meta_key IN ('gb_admin_note');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gb_admin_note');

