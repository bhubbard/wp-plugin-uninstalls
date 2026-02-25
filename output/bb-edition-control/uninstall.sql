-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbec-posttypes', 'bbec-posttype', 'bbec-templates', 'bbec-edition-format', 'wp_admin_notifications');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bb_edition_control');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bb_edition_control');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bb_edition_control');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bb_edition_control');

