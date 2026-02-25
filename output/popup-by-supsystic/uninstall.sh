#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_errors'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%is_old_user'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%plug_was_used'"
wp option delete 'pps_txt_files_css_updated'
wp option delete 'pps_txt_files_css_updated_2'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_full_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_opts_data'"
wp option delete 'supsystic_pps_love_link_title'
wp option delete 'pps_stats_recalculated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_access_py_ip'"
wp option delete 'pps_ac_subscribe'
wp option delete 'pps_ac_remind'
wp option delete 'pps_ac_disabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last__time_contact_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%welcome_sent'"
wp option delete 'pps_show_love_link'
wp option delete 'pps_last_check_love_link'
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscribe_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscribe_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscribe_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscribe_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
