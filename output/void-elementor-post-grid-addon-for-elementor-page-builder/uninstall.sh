#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'VOID_GRID_DATA_UPDATE'
wp option delete 'void_grid_elementor_post_grid_activation_time'
wp option delete 'void_grid_active_info'
wp option delete 'void_grid_spare_me'

# Delete Transients
wp transient delete 'void_grid_image_size'
wp transient delete 'void_categories'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
