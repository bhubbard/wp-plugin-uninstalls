-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fep_cf_to_field', 'FEPCF_admin_options', 'wordpress_api_key', 'fep_db_version', 'fep_meta_db_version', '_fep_used_nonces', 'fepcf_page_id');
DELETE FROM wp_options WHERE option_name LIKE 'fep_cf_%';

