#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'glossymm_options'

# Delete Transients
wp transient delete 'glossy_post_validation_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_glossymm_hf_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_glossymm_hf_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_glossymm_hf_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_glossymm_hf_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_glossymm_hf_target_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_glossymm_hf_target_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_glossymm_hf_target_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_glossymm_hf_target_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'glossymm_enabled_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'glossymm_enabled_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'glossymm_enabled_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'glossymm_enabled_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_glossymm_vertical_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_glossymm_vertical_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_glossymm_vertical_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_glossymm_vertical_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_glossymm_hf_target_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_glossymm_hf_target_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_glossymm_hf_target_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_glossymm_hf_target_roles'"
