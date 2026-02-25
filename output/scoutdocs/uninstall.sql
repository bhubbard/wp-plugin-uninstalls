-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scoutdocs_site_key', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('scoutdocs_user_key', 'scoutdocs_user_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('scoutdocs_user_key', 'scoutdocs_user_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('scoutdocs_user_key', 'scoutdocs_user_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('scoutdocs_user_key', 'scoutdocs_user_id');

