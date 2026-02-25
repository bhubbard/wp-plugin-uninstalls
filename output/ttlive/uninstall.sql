-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('TTLive_refreshHours', 'TTLive_baseurl', 'TTLive_divisionID', 'TTLive_tableclassname_TeamSpielplan', 'TTLive_tableclassname_Tabelle', 'TTLive_tableclassname_Hallenplan', 'TTLive_tableclassname_Rangliste', 'TTLive_tableclassname_14Tage', 'TTLive_tableclassname_Mannschaft');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mannschaft_id', 'staffel_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('mannschaft_id', 'staffel_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('mannschaft_id', 'staffel_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mannschaft_id', 'staffel_id');

