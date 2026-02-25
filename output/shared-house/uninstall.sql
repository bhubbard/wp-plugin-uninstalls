-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shared_house_data', 'shared_house_saison', 'shared_house_langue');

