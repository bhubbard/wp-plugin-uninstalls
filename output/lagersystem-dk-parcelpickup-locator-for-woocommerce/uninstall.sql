-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lagersystemparcelpickup_apikey', 'lagersystemparcelpickup_gmapsapikey', 'lagersystemparcelpickup_removeprefix', 'lagersystemparcelpickup_daousername', 'lagersystemparcelpickup_daopassword', 'lagersystemparcelpickup_dhlkey', 'lagersystemparcelpickup_upslicencekey', 'lagersystemparcelpickup_upsuserid', 'lagersystemparcelpickup_upspassword', 'lagersystemparcelpickup_bringuid', 'lagersystemparcelpickup_bringapikey');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Pakkeshop');
DELETE FROM wp_usermeta WHERE meta_key IN ('Pakkeshop');
DELETE FROM wp_termmeta WHERE meta_key IN ('Pakkeshop');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Pakkeshop');

