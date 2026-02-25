-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chk_facebook', 'chk_google', 'txt_firebase_config_json', 'txt_firebase_service_config_json');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('firebaseID', 'firebaseProfile');
DELETE FROM wp_usermeta WHERE meta_key IN ('firebaseID', 'firebaseProfile');
DELETE FROM wp_termmeta WHERE meta_key IN ('firebaseID', 'firebaseProfile');
DELETE FROM wp_commentmeta WHERE meta_key IN ('firebaseID', 'firebaseProfile');

