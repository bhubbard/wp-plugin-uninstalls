-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('websuite_push_notifier_db_version');
DELETE FROM wp_options WHERE option_name LIKE 'title_%';
DELETE FROM wp_options WHERE option_name LIKE 'intro_%';
DELETE FROM wp_options WHERE option_name LIKE '%-changed';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sentToSns', 'sentToFCM');
DELETE FROM wp_usermeta WHERE meta_key IN ('sentToSns', 'sentToFCM');
DELETE FROM wp_termmeta WHERE meta_key IN ('sentToSns', 'sentToFCM');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sentToSns', 'sentToFCM');

