#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'e2w_version'
wp option delete 'e2w_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'e2w_doc_save_export'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'e2w_doc_save_export'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'e2w_doc_save_export'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'e2w_doc_save_export'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'e2w_doc_tree_properties'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'e2w_doc_tree_properties'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'e2w_doc_tree_properties'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'e2w_doc_tree_properties'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'e2w_tmpl_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'e2w_tmpl_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'e2w_tmpl_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'e2w_tmpl_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
