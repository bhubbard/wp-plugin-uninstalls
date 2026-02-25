#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptc_dam_external_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptc_dam_external_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptc_dam_external_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptc_dam_external_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptc_dam_download_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptc_dam_download_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptc_dam_download_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptc_dam_download_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptc_dam_img_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptc_dam_img_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptc_dam_img_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptc_dam_img_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
