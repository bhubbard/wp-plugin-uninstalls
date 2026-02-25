#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'caifr_plugin_freemium_ident'
wp option delete 'caifr_use_boost'
wp option delete 'caifr_boosted_posts_number'
wp option delete 'cai_plugin_debride_ident'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'caifr_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'caifr_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'caifr_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'caifr_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'caifr_post_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'caifr_post_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'caifr_post_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'caifr_post_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'caifr_post_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'caifr_post_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'caifr_post_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'caifr_post_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webp_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webp_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webp_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webp_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
