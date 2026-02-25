-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmaupd_settings_all_options', 'tmaupd_plugin_mode_radio', 'tmaupd_post_types_check', 'tmaupd_post_dates_update', 'tmaupd_manual_date', 'tmaupd_auto_mode_period', 'tmaupd_keep_log', 'tmaupd_post_filter_mode', 'tmaupd_post_filter_mode_status', 'tmaupd_filter_ind_pid', 'tmaupd_filter_tax_terms', 'tmaupd_manual_datetime', 'tmaupd_auto_mode_freq', 'tmaupd_auto_mode_offset_mode', 'tmaupd_auto_mode_offset_value', 'tmaupd_auto_mode_offset_unit');
DELETE FROM wp_options WHERE option_name LIKE 'tmaupd_cpt_%';

