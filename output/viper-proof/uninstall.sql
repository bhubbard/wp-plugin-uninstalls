-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('link', 'twittername', 'fanpageid', 'fanpagename', 'displaytypes', 'icons', 'monthlyvisitors', 'viperproof_followers', 'viperproof_followers_update', 'viperproof_last_twitterer');

