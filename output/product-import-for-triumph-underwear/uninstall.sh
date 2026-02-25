#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'piftu_credentials'
wp option delete 'piftu_import_settings'
wp option delete 'piftu_stock'

# Delete Transients
wp transient delete 'PIFTU_Api::productsLogExisting'
wp transient delete 'PIFTU_Api::filters'
wp transient delete 'wc_attribute_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attribute_pa_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attribute_pa_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attribute_pa_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attribute_pa_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attribute_pa_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attribute_pa_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attribute_pa_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attribute_pa_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
