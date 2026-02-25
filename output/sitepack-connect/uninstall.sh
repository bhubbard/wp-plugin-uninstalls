#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sitepack_ajax_stock_%' OR option_name LIKE '_site_transient_sitepack_ajax_stock_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'import_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'import_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'import_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'import_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'import_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'import_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'import_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'import_source'"
