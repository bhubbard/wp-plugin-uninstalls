#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout__mailster_send_period_timeout_%'"
wp option delete '_transient_timeout__mailster_send_period_timeout'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__mailster_send_period_timeout_%' OR option_name LIKE '_site_transient__mailster_send_period_timeout_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__mailster_send_period_%' OR option_name LIKE '_site_transient__mailster_send_period_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailster-multismtp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailster-multismtp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailster-multismtp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailster-multismtp'"
