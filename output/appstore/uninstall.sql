-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('AppStore_country', 'AppStore_language', 'AppStore_enableStats', 'AppStore_Loop', 'AppStore_tdlink', 'AppStore_customAffURL', 'AppStore_PHGToken', 'AppStore_showRatings', 'AppStore_picCache', 'AppStore_dataCache', 'AppStore_dlLinkname', 'AppStore_SimpleClickCounter', 'appStore_db_version', 'AppStore_style');

