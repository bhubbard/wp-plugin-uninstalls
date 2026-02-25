-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_bu_version_post_overwritten');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_bu_version_copied_keys');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_bu_version_copied_keys');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_bu_version_copied_keys');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_bu_version_copied_keys');

