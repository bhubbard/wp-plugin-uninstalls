#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ifcpwafc_acf_pro_missing_notice'
wp option delete 'ifcpwafc_cpt_post_types'

# Delete Transients
wp transient delete 'ifcpwafc_plugin_uploaded_image_ids'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
