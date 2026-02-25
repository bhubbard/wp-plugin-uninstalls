#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fx-builder'
wp option delete 'fx-builder_welcome'
wp option delete 'fx-builder_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fxb_row_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fxb_row_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fxb_row_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fxb_row_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fxb_rows'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fxb_rows'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fxb_rows'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fxb_rows'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fxb_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fxb_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fxb_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fxb_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fxb_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fxb_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fxb_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fxb_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fxb_db_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fxb_db_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fxb_db_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fxb_db_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fxb_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fxb_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fxb_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fxb_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fxb_custom_css_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fxb_custom_css_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fxb_custom_css_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fxb_custom_css_disable'"
