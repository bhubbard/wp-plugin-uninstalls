#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bql_login_form'
wp option delete 'bql_expire_time'
wp option delete 'bql_keep_logged_in'
wp option delete 'bql_force_one_session'
wp option delete 'bql_recaptcha_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quicklogin_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quicklogin_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quicklogin_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quicklogin_token'"
