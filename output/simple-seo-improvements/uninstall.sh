#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iworks_ssi_post_types'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%last_used_tab'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cache_stamp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%flush_rules'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_base'"
wp option delete 'iworks_ssi_other_archives'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_title'"
