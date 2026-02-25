#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_profile_views_admin_welcome_options'
wp option delete 'bp_profile_views_general_options'

# Delete Transients
wp transient delete '_woo_document_preview_is_new_install'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdp_documents'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdp_documents'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdp_documents'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdp_documents'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcdp_preview_attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcdp_preview_attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcdp_preview_attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcdp_preview_attachment'"
