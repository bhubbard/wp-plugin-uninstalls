-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blogger_importer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('blogger_blog', 'blogger_author', 'blogger_permalink', '_import_expiration', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('blogger_blog', 'blogger_author', 'blogger_permalink', '_import_expiration', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('blogger_blog', 'blogger_author', 'blogger_permalink', '_import_expiration', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('blogger_blog', 'blogger_author', 'blogger_permalink', '_import_expiration', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_permalink';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_permalink';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_permalink';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_permalink';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';

