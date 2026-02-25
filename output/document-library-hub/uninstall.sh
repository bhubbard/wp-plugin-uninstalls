#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dlhp_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlhp_document_file_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlhp_document_file_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlhp_document_file_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlhp_document_file_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlhp_document_file_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlhp_document_file_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlhp_document_file_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlhp_document_file_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlhp_document_external_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlhp_document_external_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlhp_document_external_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlhp_document_external_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlhp_document_file_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlhp_document_file_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlhp_document_file_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlhp_document_file_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlhp_document_file_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlhp_document_file_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlhp_document_file_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlhp_document_file_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlhp_restrict_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlhp_restrict_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlhp_restrict_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlhp_restrict_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlhp_protected_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlhp_protected_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlhp_protected_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlhp_protected_roles'"
