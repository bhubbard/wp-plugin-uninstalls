-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hwcf_version_1_0_0_installed', 'hwcf_notice_dismiss', 'hwcf_migrated_1_2_16', 'hwcf_settings_data', 'hwcf_disable_purchases', 'hwcf_delete_on_deactivation', 'hwcf_cripple_bots', 'hwcf_settings_ids_increament');

