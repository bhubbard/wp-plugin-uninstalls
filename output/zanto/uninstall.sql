-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_zwt_cache', 'wp_language_show_switcher', 'zwt_taxonomy_meta', 'wp_languages_options', 'wp_language_locale', 'zwt_zanto_settings', '_zwt_settings_buckup', 'recently_activated', 'anh_notices', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%zanto_settings';
DELETE FROM wp_options WHERE option_name LIKE '%notices';
DELETE FROM wp_options WHERE option_name LIKE '%cron_example_timed_job';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zwt_zanto_settings', 'zwt_locale_settings', 'zwt_installed_transnetwork', 'ztm_install', 'zwt_adminlang_lang', '_translation_meta_', '_draft_translations');
DELETE FROM wp_usermeta WHERE meta_key IN ('zwt_zanto_settings', 'zwt_locale_settings', 'zwt_installed_transnetwork', 'ztm_install', 'zwt_adminlang_lang', '_translation_meta_', '_draft_translations');
DELETE FROM wp_termmeta WHERE meta_key IN ('zwt_zanto_settings', 'zwt_locale_settings', 'zwt_installed_transnetwork', 'ztm_install', 'zwt_adminlang_lang', '_translation_meta_', '_draft_translations');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zwt_zanto_settings', 'zwt_locale_settings', 'zwt_installed_transnetwork', 'ztm_install', 'zwt_adminlang_lang', '_translation_meta_', '_draft_translations');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_exclude';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_exclude';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_exclude';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_exclude';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%post_network';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%post_network';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%post_network';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%post_network';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_network_vars';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_network_vars';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_network_vars';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_network_vars';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_site_cache';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_site_cache';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_site_cache';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_site_cache';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%language_pairs';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%language_pairs';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%language_pairs';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%language_pairs';

