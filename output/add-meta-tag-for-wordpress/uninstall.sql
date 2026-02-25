-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enable_tag', 'enable_page_tag', 'enable_post_tag', 'enable_og');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('add_meta_tag_for_wordpress');
DELETE FROM wp_usermeta WHERE meta_key IN ('add_meta_tag_for_wordpress');
DELETE FROM wp_termmeta WHERE meta_key IN ('add_meta_tag_for_wordpress');
DELETE FROM wp_commentmeta WHERE meta_key IN ('add_meta_tag_for_wordpress');

