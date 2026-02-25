-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autotag_tag_posts', 'autotag_tag_pages', 'autotag_number', 'autotag_remove_tags');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_auto_tag_removed_tags', '_auto_tag_disabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('_auto_tag_removed_tags', '_auto_tag_disabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('_auto_tag_removed_tags', '_auto_tag_disabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_auto_tag_removed_tags', '_auto_tag_disabled');

