-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpgs_settings', 'gspeech_version_index', 'gspeech_crypto', 'gspeech_reload_session', 'gspeech_sh_w_loaded', 'gspeech_sh_', 'gspeech_plan', 'gspeech_appsumo', 'GTranslate', 'GSpeech', 'gspeech_db_version', 'gspeech_admin_notice', 'gspeech_settings_cache', 'gsp_crypto_cache');
DELETE FROM wp_options WHERE option_name LIKE 'gspeech_%';
DELETE FROM wp_options WHERE option_name LIKE '%_admin_notice';

