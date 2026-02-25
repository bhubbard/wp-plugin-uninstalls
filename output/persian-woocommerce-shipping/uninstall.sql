-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pws_install_cities', 'sabira_set_iran_cities', 'pws_notices', 'pws_dismiss_notice_all', 'PW_Options', 'pws_tapin_services', 'pws_installing_cities', 'pws_update_notices', 'pws_states', 'pws_tapin_states', 'pws_tapin_services', 'pws_tapin_credit', 'pws_admin_updating');
DELETE FROM wp_options WHERE option_name LIKE 'pws_dismiss_notice_%';
DELETE FROM wp_options WHERE option_name LIKE 'nabik_taxonomy_%';
DELETE FROM wp_options WHERE option_name LIKE 'pws_%';
DELETE FROM wp_options WHERE option_name LIKE 'nabik_taxonomy_tapin_%';
DELETE FROM wp_options WHERE option_name LIKE 'pws_cities_%';
DELETE FROM wp_options WHERE option_name LIKE 'pws_tapin_cities_%';
DELETE FROM wp_options WHERE option_name LIKE 'pws_tapin_shop_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pws_map_location', 'tapin_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('pws_map_location', 'tapin_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('pws_map_location', 'tapin_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pws_map_location', 'tapin_method');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_district';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_district';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_district';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_district';

