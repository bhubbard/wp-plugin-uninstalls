-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pps_txt_files_css_updated', 'pps_txt_files_css_updated_2', 'supsystic_pps_love_link_title', 'pps_stats_recalculated', 'pps_ac_subscribe', 'pps_ac_remind', 'pps_ac_disabled', 'pps_show_love_link', 'pps_last_check_love_link', 'recently_activated', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_errors';
DELETE FROM wp_options WHERE option_name LIKE '%db_version';
DELETE FROM wp_options WHERE option_name LIKE '%db_installed';
DELETE FROM wp_options WHERE option_name LIKE '%is_old_user';
DELETE FROM wp_options WHERE option_name LIKE '%plug_was_used';
DELETE FROM wp_options WHERE option_name LIKE '%_full_installed';
DELETE FROM wp_options WHERE option_name LIKE '%_opts_data';
DELETE FROM wp_options WHERE option_name LIKE '%_access_py_ip';
DELETE FROM wp_options WHERE option_name LIKE '%_last__time_contact_send';
DELETE FROM wp_options WHERE option_name LIKE '%welcome_sent';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_subscribe_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_subscribe_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_subscribe_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_subscribe_url');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-tour-hst';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-tour-hst';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-tour-hst';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-tour-hst';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

