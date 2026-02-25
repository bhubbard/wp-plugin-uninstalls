#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imsanity_resume_id'
wp option delete 'imsanity_version'
wp option delete 'imsanity_max_width'
wp option delete 'imsanity_max_height'
wp option delete 'imsanity_max_width_library'
wp option delete 'imsanity_max_height_library'
wp option delete 'imsanity_max_width_other'
wp option delete 'imsanity_max_height_other'
wp option delete 'imsanity_bmp_to_jpg'
wp option delete 'imsanity_png_to_jpg'
wp option delete 'imsanity_quality'
wp option delete 'imsanity_avif_quality'
wp option delete 'imsanity_webp_quality'
wp option delete 'imsanity_delete_originals'

# Delete Transients
wp transient delete 'dirsize_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
