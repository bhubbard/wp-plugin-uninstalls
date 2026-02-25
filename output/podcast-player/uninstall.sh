#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pp-common-options'
wp option delete 'pp_shortcode_options'
wp option delete 'pp_total_image_downloads'
wp option delete 'podcast-player-admin-notice'
wp option delete 'pp_feed_index'
wp option delete 'pp_media_src_index'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pp_feed_data_%'"
wp option delete 'pp-register'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_recent_dispatch' OR option_name LIKE '_site_transient_%_recent_dispatch'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_force_dispatch' OR option_name LIKE '_site_transient_%_force_dispatch'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'pp_auto_update_podcast'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp_featured_key_norm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp_featured_key_norm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp_featured_key_norm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp_featured_key_norm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp_featured_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp_featured_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp_featured_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp_featured_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp_import_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp_import_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp_import_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp_import_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp_episode_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp_episode_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp_episode_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp_episode_id'"
