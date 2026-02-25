#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mainwp_security'
wp option delete 'da_disable_third_party_js'
wp option delete 'default_post_edit_rows'
wp option delete 'drag-drop-post-types'
wp option delete 'drag-drop-file-types'
wp option delete 'drag-drop-user-capability'
wp option delete 'drag-drop-page-reload'

# Delete Transients
wp transient delete 'da_bc_product_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_da_hotspots_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_da_hotspots_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_da_hotspots_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_da_hotspots_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_da_hotspots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_da_hotspots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_da_hotspots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_da_hotspots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%hotspots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%hotspots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%hotspots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%hotspots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%coordinates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%coordinates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%coordinates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%coordinates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_da_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_da_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_da_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_da_%'"
