#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pp-sso-state--%'"
wp option delete 'pp-sso-plugin-version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pp-sso-state--%' OR option_name LIKE '_site_transient_pp-sso-state--%'"

# Clear Cron Jobs
wp cron event delete 'pp-sso-cron-daily'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp-sso-last-token-response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp-sso-last-token-response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp-sso-last-token-response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp-sso-last-token-response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp-sso-last-id-token-claim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp-sso-last-id-token-claim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp-sso-last-id-token-claim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp-sso-last-id-token-claim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp-sso-last-user-claim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp-sso-last-user-claim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp-sso-last-user-claim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp-sso-last-user-claim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp-sso-subject-identity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp-sso-subject-identity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp-sso-subject-identity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp-sso-subject-identity'"
