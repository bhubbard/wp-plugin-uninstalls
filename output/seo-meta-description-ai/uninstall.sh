#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seo_meta_description_ai_activation_code'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_meta_description_ai_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_meta_description_ai_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_meta_description_ai_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_meta_description_ai_meta_description'"
