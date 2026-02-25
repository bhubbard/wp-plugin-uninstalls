#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'mknu_stickiness_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mknu_sticky_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mknu_sticky_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mknu_sticky_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mknu_sticky_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mknu_unsticky_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mknu_unsticky_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mknu_unsticky_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mknu_unsticky_date'"
