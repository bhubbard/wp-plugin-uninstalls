#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jras_deleted_posts'
wp option delete 'jras_updated_posts'
wp option delete 'jras_created_posts'
wp option delete 'jras_notifier_lock'

# Clear Cron Jobs
wp cron event delete 'jras_notify'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jras_events'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jras_events'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jras_events'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jras_events'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jras_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jras_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jras_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jras_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jras_signature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jras_signature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jras_signature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jras_signature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jras_content_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jras_content_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jras_content_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jras_content_type'"
