#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_errors'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%gmp_markers_groups_multiple_updated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%gmp_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%gmp_db_installed'"
wp option delete 'gmp_plug_was_used'
wp option delete 'gmp_def_icons_installed'
wp option delete 'gmp_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_full_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_def_icons_installed'"
wp option delete 'gmp_marker_groups_opts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_opts_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last__time_contact_send'"
wp option delete 'gmp_ac_subscribe'
wp option delete 'gmp_ac_remind'
wp option delete 'gmp_ac_disabled'
wp option delete 'supsystic_gmp_love_link_title'
wp option delete 'gmp_show_love_link'
wp option delete 'gmp_last_check_love_link'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_unique_stats'"

