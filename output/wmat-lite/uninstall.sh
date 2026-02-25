#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wmat_settings'

# Clear Cron Jobs
wp cron event delete 'wmat_ml_cron'
wp cron event delete 'wmat_send_additional_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'telegram_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'telegram_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'telegram_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'telegram_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmat_session_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmat_session_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmat_session_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmat_session_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmat_login_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmat_login_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmat_login_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmat_login_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmat_token_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmat_token_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmat_token_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmat_token_expiration'"
