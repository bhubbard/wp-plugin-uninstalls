#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'comment_expirator'

# Clear Cron Jobs
wp cron event delete 'comment_expirator'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_expirator_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_expirator_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_expirator_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_expirator_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_expirator_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_expirator_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_expirator_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_expirator_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_expirator_disable_pt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_expirator_disable_pt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_expirator_disable_pt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_expirator_disable_pt'"
