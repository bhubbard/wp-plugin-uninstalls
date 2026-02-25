#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_viewed'"
wp option delete 'otb_new_theme'
wp option delete 'otb_new_plugin'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%hide_delay'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%opacity'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rollover_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rollover_opacity'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%indentation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%bottom_indentation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%icon_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%animation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%hide_when_inactive'"

