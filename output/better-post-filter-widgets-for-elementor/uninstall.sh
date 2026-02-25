#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'bpfwe_filter_query'
wp transient delete 'bpfwe_filter_post_ids'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_id_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_id_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_id_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_id_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpfwe_swatches_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpfwe_swatches_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpfwe_swatches_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpfwe_swatches_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpfwe_swatches_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpfwe_swatches_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpfwe_swatches_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpfwe_swatches_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpfwe_swatches_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpfwe_swatches_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpfwe_swatches_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpfwe_swatches_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpfwe_swatches_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpfwe_swatches_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpfwe_swatches_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpfwe_swatches_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpfwe_swatches_group_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpfwe_swatches_group_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpfwe_swatches_group_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpfwe_swatches_group_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
