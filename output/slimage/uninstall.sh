#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slimage_enable_compression'
wp option delete 'slimage_server_path'
wp option delete 'slimage_jpegoptim_level'
wp option delete 'slimage_optipng_level'
wp option delete 'slimage_jpegoptim_extras'
wp option delete 'slimage_optipng_extras'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slimage_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slimage_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slimage_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slimage_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slimage_quality'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slimage_quality'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slimage_quality'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slimage_quality'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slimage_extras'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slimage_extras'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slimage_extras'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slimage_extras'"
