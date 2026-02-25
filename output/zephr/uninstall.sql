-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zephr', 'zephr_user_migration_success', 'zephr_graphql_sites', 'zephr_browser_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zephr_feature');
DELETE FROM wp_usermeta WHERE meta_key IN ('zephr_feature');
DELETE FROM wp_termmeta WHERE meta_key IN ('zephr_feature');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zephr_feature');

