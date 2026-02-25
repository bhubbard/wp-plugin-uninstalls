-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gp_machine_translate_provider', 'gp_machine_translate_key', 'gp_machine_translate_client_id', 'gp_machine_translate_extra_info', 'gp_machine_translate_version', 'gp_google_translate_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gp_machine_translate_client_id', 'gp_machine_translate_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('gp_machine_translate_client_id', 'gp_machine_translate_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('gp_machine_translate_client_id', 'gp_machine_translate_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gp_machine_translate_client_id', 'gp_machine_translate_key');

