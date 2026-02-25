#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'existing_api_model'
wp option delete 'existing_temperature'
wp option delete 'existing_max_tokens'
wp option delete 'existing_frequency_penalty'
wp option delete 'existing_presence_penalty'
wp option delete 'existing_api_n'
wp option delete 'api_script_key'
wp option delete 'existing_img_size'
wp option delete 'existing_num_images'
wp option delete 'api_opaigpt_language'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
