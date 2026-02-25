#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'contentstudio_redirect'
wp option delete 'contentstudio_token'
wp option delete 'contentstudio_save_media_in_wp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contentstudio_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contentstudio_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contentstudio_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contentstudio_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contentstudio_wpseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contentstudio_wpseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contentstudio_wpseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contentstudio_wpseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_old_slug'"
