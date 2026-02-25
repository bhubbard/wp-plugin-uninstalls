-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_antispam_for_all_fields_statskilled', 'plugin_antispam_for_all_fields_statsspammed', 'plugin_antispam_for_all_fields_installed', 'plugin_antispam_for_all_fields_settings', 'plugin_antispam_for_all_fields_version', 'antispamextra_disallow_nonreferers', 'plugin_afaf_nonce1');

