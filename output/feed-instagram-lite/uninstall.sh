#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'classic-editor-replace'
wp option delete 'gifeed_activation_init'
wp option delete 'ghozylab_instagram_feed_options'

# Delete Transients
wp transient delete 'gifeed_featured_feed'

# Clear Cron Jobs
wp cron event delete 'gifeed_auto_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gifeed_meta_ids_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gifeed_meta_ids_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gifeed_meta_ids_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gifeed_meta_ids_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gifeed_meta_feed_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gifeed_meta_feed_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gifeed_meta_feed_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gifeed_meta_feed_format'"
