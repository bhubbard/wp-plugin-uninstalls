#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'writio_do_activation_redirect'
wp option delete 'writio_account_email'

# Clear Cron Jobs
wp cron event delete 'writio_pull_unpublished_articles'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
