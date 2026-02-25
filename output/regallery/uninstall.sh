#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reacg_installed_time'
wp option delete 'reacg_do_activation_redirect'
wp option delete 'reacg_optin_shown'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'reacg_options%'"
wp option delete 'woocommerce_currency_pos'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gallery_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gallery_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gallery_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gallery_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'options_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'options_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'options_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'options_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'images_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'images_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'images_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'images_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'images_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'images_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'images_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'images_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'additional_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'additional_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'additional_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'additional_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exif'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exif'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exif'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exif'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'action_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'action_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'action_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'action_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edit_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edit_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edit_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edit_count'"
