#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'luxe_gallery_options'
wp option delete 'luxe_gallery_version'
wp option delete 'luxe_gallery_settings'
wp option delete 'luxe_gallery_license_key'
wp option delete 'luxe_gallery_license_status'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_luxe_gallery_output_%' OR option_name LIKE '_site_transient_luxe_gallery_output_%'"
wp transient delete 'luxe_gallery_select_options'
wp transient delete 'luxe_gallery_block_select_options'
wp transient delete 'luxe_gallery_elementor_select_options'
wp transient delete 'luxe_gallery_bricks_select_options'
wp transient delete 'luxe_gallery_divi_select_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_luxe_gallery_grid_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_luxe_gallery_grid_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_luxe_gallery_grid_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_luxe_gallery_grid_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_luxe_gallery_hero_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_luxe_gallery_hero_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_luxe_gallery_hero_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_luxe_gallery_hero_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_luxe_gallery_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_luxe_gallery_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_luxe_gallery_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_luxe_gallery_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_luxe_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_luxe_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_luxe_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_luxe_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_luxe_gallery_layout_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_luxe_gallery_layout_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_luxe_gallery_layout_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_luxe_gallery_layout_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_luxe_gallery_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_luxe_gallery_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_luxe_gallery_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_luxe_gallery_settings'"
