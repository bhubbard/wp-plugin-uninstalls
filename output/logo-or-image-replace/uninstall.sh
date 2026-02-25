#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qc_lpp_selected_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_lpp_original_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_lpp_original_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_lpp_original_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_lpp_original_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_lpp_replacing_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_lpp_replacing_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_lpp_replacing_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_lpp_replacing_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_lpp_image_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_lpp_image_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_lpp_image_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_lpp_image_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_lpp_image_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_lpp_image_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_lpp_image_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_lpp_image_height'"
