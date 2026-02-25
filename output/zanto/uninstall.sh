#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_zwt_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%zanto_settings'"
wp option delete 'wp_language_show_switcher'
wp option delete 'zwt_taxonomy_meta'
wp option delete 'wp_languages_options'
wp option delete 'wp_language_locale'
wp option delete 'zwt_zanto_settings'
wp option delete '_zwt_settings_buckup'
wp option delete 'recently_activated'
wp option delete 'anh_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%notices'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%cron_example_timed_job' OR option_name LIKE '_site_transient_%cron_example_timed_job'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zwt_zanto_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zwt_zanto_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zwt_zanto_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zwt_zanto_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zwt_locale_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zwt_locale_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zwt_locale_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zwt_locale_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zwt_installed_transnetwork'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zwt_installed_transnetwork'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zwt_installed_transnetwork'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zwt_installed_transnetwork'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ztm_install'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ztm_install'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ztm_install'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ztm_install'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%post_network'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%post_network'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%post_network'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%post_network'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zwt_adminlang_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zwt_adminlang_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zwt_adminlang_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zwt_adminlang_lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_network_vars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_network_vars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_network_vars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_network_vars'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_site_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_site_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_site_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_site_cache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_translation_meta_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_translation_meta_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_translation_meta_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_translation_meta_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_draft_translations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_draft_translations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_draft_translations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_draft_translations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%language_pairs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%language_pairs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%language_pairs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%language_pairs'"
