#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smart_image_optimizer_default_format'
wp option delete 'smart_image_optimizer_default_quality'
wp option delete 'smart_image_optimizer_auto_optimize'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sio_optimized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sio_optimized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sio_optimized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sio_optimized'"
