#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_excerpt_gen_api_key'
wp option delete 'ai_excerpt_gen_max_token'
wp option delete 'ai_excerpt_gen_post_types_enabled'
wp option delete 'ai_excerpt_gen_model'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themencode_ai_generated_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themencode_ai_generated_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themencode_ai_generated_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themencode_ai_generated_excerpt'"
