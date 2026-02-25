#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kaigen_provider_api_keys'
wp option delete 'kaigen_provider_models'
wp option delete 'kaigen_quality_settings'
wp option delete 'kaigen_provider'
wp option delete 'kaigen_openai_api_key'
wp option delete 'kaigen_quality_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kaigen_reference_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kaigen_reference_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kaigen_reference_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kaigen_reference_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kaigen_generation_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kaigen_generation_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kaigen_generation_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kaigen_generation_meta'"
