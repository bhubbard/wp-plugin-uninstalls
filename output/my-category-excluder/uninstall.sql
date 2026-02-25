-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('on_home', 'on_archives', 'on_feeds', 'include_cat', 'exclude_cat');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('exc_cats_list');
DELETE FROM wp_usermeta WHERE meta_key IN ('exc_cats_list');
DELETE FROM wp_termmeta WHERE meta_key IN ('exc_cats_list');
DELETE FROM wp_commentmeta WHERE meta_key IN ('exc_cats_list');

