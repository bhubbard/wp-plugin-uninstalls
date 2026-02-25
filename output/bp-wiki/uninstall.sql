-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_wiki_banned_page_slugs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wiki_view_access', 'wiki_edit_access', 'wiki_page_visible');
DELETE FROM wp_usermeta WHERE meta_key IN ('wiki_view_access', 'wiki_edit_access', 'wiki_page_visible');
DELETE FROM wp_termmeta WHERE meta_key IN ('wiki_view_access', 'wiki_edit_access', 'wiki_page_visible');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wiki_view_access', 'wiki_edit_access', 'wiki_page_visible');

