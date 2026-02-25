#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_openid-connect-generic-state--%'"
wp option delete 'openid-connect-generic-plugin-version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_openid-connect-generic-state--%' OR option_name LIKE '_site_transient_openid-connect-generic-state--%'"

# Clear Cron Jobs
wp cron event delete 'openid-connect-generic-cron-daily'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'openid-connect-generic-last-token-response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'openid-connect-generic-last-token-response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'openid-connect-generic-last-token-response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'openid-connect-generic-last-token-response'"
