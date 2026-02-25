#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ig_profile'
wp option delete 'ig_gallery_counter_show'
wp option delete 'ig_gallery_columns'
wp option delete 'ig_profile_updated'

# Clear Cron Jobs
wp cron event delete 'ig_cron_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ig_photos_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ig_photos_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ig_photos_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ig_photos_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ig_followers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ig_followers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ig_followers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ig_followers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ig_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ig_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ig_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ig_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
