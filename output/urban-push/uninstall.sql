-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('urbanpush_password', 'urbanpush_appname', 'urbanpush_appkey', 'urbanpush_appmaster', 'urbanpush_appname2', 'urbanpush_appkey2', 'urbanpush_appmaster2', 'urbanpush_appname3', 'urbanpush_appkey3', 'urbanpush_appmaster3', 'urbanpush_appname4', 'urbanpush_appkey4', 'urbanpush_appmaster4');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'push sent for %';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'push sent for %';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'push sent for %';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'push sent for %';

