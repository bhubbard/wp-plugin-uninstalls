#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pip_styles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'polylang'
wp option delete 'pilopress'

# Delete Transients
wp transient delete 'pip_tailwind_api_compile_error'
wp transient delete 'pip_tailwind_api_compile_success'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linked_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linked_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linked_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linked_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linked_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linked_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linked_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linked_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pip_flexible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pip_flexible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pip_flexible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pip_flexible'"
