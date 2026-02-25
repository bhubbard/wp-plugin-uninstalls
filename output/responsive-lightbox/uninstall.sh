#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'responsive_lightbox_folders'
wp option delete 'responsive_lightbox_version'
wp option delete 'responsive_lightbox_licenses'
wp option delete 'rl_settings'
wp option delete 'responsive_lightbox_settings'
wp option delete 'rl_configuration'
wp option delete 'responsive_lightbox_configuration'
wp option delete 'responsive_lightbox_capabilities'
wp option delete 'responsive_lightbox_builder'
wp option delete 'responsive_lightbox_remote_library'
wp option delete 'responsive_lightbox_basicgrid_gallery'
wp option delete 'responsive_lightbox_basicslider_gallery'
wp option delete 'responsive_lightbox_basicmasonry_gallery'
wp option delete 'responsive_lightbox_activation_date'

# Delete Transients
wp transient delete 'rl-attachment_ids_by_url'
wp transient delete 'rl-image_sizes_by_url'
wp transient delete 'rl_active_tour'
wp transient delete 'rl_activation_redirect'
wp transient delete 'responsive_lightbox_addons_feed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_rl_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_rl_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_rl_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_rl_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rl_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rl_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rl_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rl_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rl_design'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rl_design'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rl_design'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rl_design'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rl_lightbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rl_lightbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rl_lightbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rl_lightbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rl_images_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rl_images_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rl_images_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rl_images_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-box-order_rl_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-box-order_rl_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-box-order_rl_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-box-order_rl_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rl_featured_image_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rl_featured_image_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rl_featured_image_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rl_featured_image_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rl_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rl_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rl_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rl_featured_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rl_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rl_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rl_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rl_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpml_media_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpml_media_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpml_media_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpml_media_processed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rl_paging'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rl_paging'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rl_paging'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rl_paging'"
