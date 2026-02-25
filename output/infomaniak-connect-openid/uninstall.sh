#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_infomaniak-connect-openid-state--%'"
wp option delete 'infomaniak-connect-openid-plugin-version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_infomaniak-connect-openid-state--%' OR option_name LIKE '_site_transient_infomaniak-connect-openid-state--%'"

# Clear Cron Jobs
wp cron event delete 'infomaniak-connect-openid-cron-daily'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'infomaniak-connect-openid-last-token-response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'infomaniak-connect-openid-last-token-response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'infomaniak-connect-openid-last-token-response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'infomaniak-connect-openid-last-token-response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'infomaniak-connect-openid-last-id-token-claim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'infomaniak-connect-openid-last-id-token-claim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'infomaniak-connect-openid-last-id-token-claim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'infomaniak-connect-openid-last-id-token-claim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'infomaniak-connect-openid-last-user-claim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'infomaniak-connect-openid-last-user-claim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'infomaniak-connect-openid-last-user-claim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'infomaniak-connect-openid-last-user-claim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'infomaniak-connect-openid-subject-identity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'infomaniak-connect-openid-subject-identity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'infomaniak-connect-openid-subject-identity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'infomaniak-connect-openid-subject-identity'"
