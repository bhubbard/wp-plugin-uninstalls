-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('muap_id_url');
DELETE FROM wp_options WHERE option_name LIKE 'muap_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'muap_id_cap_%';
DELETE FROM wp_options WHERE option_name LIKE 'access_to_other_roles_%';
DELETE FROM wp_options WHERE option_name LIKE 'muap_id_url_%';

