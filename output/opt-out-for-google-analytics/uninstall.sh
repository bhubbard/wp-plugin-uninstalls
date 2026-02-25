#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ga_plugin'"
wp option delete 'gap_options'
wp option delete 'googlesitekit_analytics_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%promotion_off'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%has_todos' OR option_name LIKE '_site_transient_%has_todos'"

