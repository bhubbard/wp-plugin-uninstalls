#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'auto_post_exp_add_every_three_minutes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expire_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expire_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expire_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expire_date'"
