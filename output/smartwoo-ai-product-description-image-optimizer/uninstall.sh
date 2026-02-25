#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smartwoo_enable_dalle'
wp option delete 'smartwoo_api_key'
wp option delete 'smartwoo_max_tokens'
wp option delete 'smartwoo_description_tone'
wp option delete 'smartwoo_gpt_model'
wp option delete 'smartwoo_prompt_title'
wp option delete 'smartwoo_prompt_short_description'
wp option delete 'smartwoo_prompt_full_description'
wp option delete 'smartwoo_prompt_tags'
wp option delete 'smartwoo_prompt_image_alt_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
