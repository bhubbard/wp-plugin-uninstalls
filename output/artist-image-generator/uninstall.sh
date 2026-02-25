#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"

# Clear Cron Jobs
wp cron event delete 'artist_image_generator_license_validity'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upscaled_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upscaled_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upscaled_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upscaled_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aig_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aig_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aig_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aig_user_avatar'"
