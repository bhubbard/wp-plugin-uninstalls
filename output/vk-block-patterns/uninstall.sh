#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vk_block_patterns_options'
wp option delete 'vk_patterns_api_cached_keys'

# Delete Transients
wp transient delete 'vk_patterns_api_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vbp-init-pattern-add-method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vbp-init-pattern-add-method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vbp-init-pattern-add-method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vbp-init-pattern-add-method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vbp-init-post-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vbp-init-post-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vbp-init-post-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vbp-init-post-type'"
