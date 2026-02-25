#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpip_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vcvSourceCssFileUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vcvSourceCssFileUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vcvSourceCssFileUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vcvSourceCssFileUrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vcvSourceCssFileHash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vcvSourceCssFileHash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vcvSourceCssFileHash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vcvSourceCssFileHash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_post_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_post_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_post_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_post_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'insert_pages_tinymce_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'insert_pages_tinymce_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'insert_pages_tinymce_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'insert_pages_tinymce_state'"
