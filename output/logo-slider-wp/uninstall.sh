#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'lswp_plugin_clicked'
wp transient delete 'lswp_pro_active'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_logosliderwpmeta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_logosliderwpmeta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_logosliderwpmeta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_logosliderwpmeta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lgx_lsp_shortcodes_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lgx_lsp_shortcodes_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lgx_lsp_shortcodes_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lgx_lsp_shortcodes_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
