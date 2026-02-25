#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_imsizer_wplimit_onoff'
wp option delete 'wp_imsizer_onoff'
wp option delete 'wp_imsizer_width'
wp option delete 'wp_imsizer_height'
wp option delete 'wp_imsizer_setalts'
wp option delete 'wp_imsizer_setname'
wp option delete 'wp_imsizer_setcapt'
wp option delete 'wp_imsizer_setdesc'
wp option delete 'wp_imsizer_restrict_size'
wp option delete 'wp_imsizer_max_file_size'
wp option delete 'wp_imsizer_file_size_error'
wp option delete 'wp_imsizer_convertpng_yesno'
wp option delete 'wp_imsizer_width '
wp option delete 'wp_imsizer_height '

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
