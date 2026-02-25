#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atgai_api_key'
wp option delete 'atgai_domain_id'
wp option delete 'atgai_language'
wp option delete 'atgai_auto_generate'
wp option delete 'atgai_enable_chatgpt_enhancement'
wp option delete 'atgai_chatgpt_enhancement_prompt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
