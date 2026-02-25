-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_mwall_delete_cropped_messages_success';
DELETE FROM wp_options WHERE option_name LIKE '%_mwall_delete_cropped_messages_error';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('grid-elements', 'grid-columns', 'mci-category-url', 'mci-tag-url');
DELETE FROM wp_usermeta WHERE meta_key IN ('grid-elements', 'grid-columns', 'mci-category-url', 'mci-tag-url');
DELETE FROM wp_termmeta WHERE meta_key IN ('grid-elements', 'grid-columns', 'mci-category-url', 'mci-tag-url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('grid-elements', 'grid-columns', 'mci-category-url', 'mci-tag-url');

