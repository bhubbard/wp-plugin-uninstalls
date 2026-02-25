-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('option_erase_cache', 'option_cache_timeout', 'option_idhal', 'option_type', 'option_choix', 'option_infocontact', 'option_groupe', 'option_email', 'option_tel', 'option_social0', 'option_social1', 'option_social2', 'option_social3', 'option_lang');

