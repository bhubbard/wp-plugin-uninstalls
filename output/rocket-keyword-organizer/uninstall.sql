-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rbko_keywords', 'rbko_keyword_lists', 'rbko_delete_on_uninstall');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tracked_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tracked_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tracked_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tracked_keywords');

