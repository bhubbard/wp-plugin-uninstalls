#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simple_io_image_optimized_quality'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simple_io_image_optimized_quality'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simple_io_image_optimized_quality'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simple_io_image_optimized_quality'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simple_io_original_image_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simple_io_original_image_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simple_io_original_image_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simple_io_original_image_path'"
