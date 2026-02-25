-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_capusta_log_file_name', 'wc_capusta_last_settings_update_version', 'WC_Capusta_last_settings_update_version');

