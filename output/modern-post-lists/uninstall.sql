-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('modern_post_lists');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_external_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('_external_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('_external_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_external_link');

