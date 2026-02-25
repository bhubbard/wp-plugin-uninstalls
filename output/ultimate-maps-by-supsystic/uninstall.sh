#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_errors'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%plug_was_used'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%opts_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_full_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_def_icons_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_opts_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last__time_contact_send'"
wp option delete 'ums_ac_subscribe'
wp option delete 'ums_ac_remind'
wp option delete 'ums_ac_disabled'
wp option delete 'ums_show_love_link'
wp option delete 'ums_last_check_love_link'
wp option delete 'supsystic_ums_love_link_title'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_unique_stats'"

