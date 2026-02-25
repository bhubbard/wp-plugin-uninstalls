#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spambanana_settings'
wp option delete 'spambanana_version'
wp option delete 'comment_previously_approved'

# Delete Transients
wp transient delete 'spambanana_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'spambanana_cleanup_logs'
wp cron event delete 'spambanana_auto_delete_spam'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spambanana_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spambanana_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spambanana_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spambanana_score'"
