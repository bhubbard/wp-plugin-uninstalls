#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_google_maps_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tf_flashsale_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tf_flashsale_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tf_flashsale_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tf_flashsale_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tf_flashsale_text_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tf_flashsale_text_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tf_flashsale_text_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tf_flashsale_text_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfhf_template_include_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfhf_template_include_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfhf_template_include_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfhf_template_include_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfhf_template_exclude_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfhf_template_exclude_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfhf_template_exclude_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfhf_template_exclude_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfhf_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfhf_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfhf_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfhf_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
