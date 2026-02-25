#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bf3infobox_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bf3_stats_playerdata_%' OR option_name LIKE '_site_transient_bf3_stats_playerdata_%'"

