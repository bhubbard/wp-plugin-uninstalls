-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('this_is_a_wiki_blog', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wiki_view_access', 'wiki_edit_access', 'wiki_page_enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('wiki_view_access', 'wiki_edit_access', 'wiki_page_enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('wiki_view_access', 'wiki_edit_access', 'wiki_page_enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wiki_view_access', 'wiki_edit_access', 'wiki_page_enabled');

