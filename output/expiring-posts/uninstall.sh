#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'exp_expire_post_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exp_pending_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exp_pending_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exp_pending_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exp_pending_expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exp_expiration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exp_expiration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exp_expiration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exp_expiration_date'"
