-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rwpp_db_version', 'rwpp_migration_mode', 'rwpp_effected_loops');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rwpp_sortorder_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rwpp_sortorder_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rwpp_sortorder_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rwpp_sortorder_%';

