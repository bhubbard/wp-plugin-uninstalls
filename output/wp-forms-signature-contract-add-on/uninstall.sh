#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'esig_global_document_id'
wp option delete 'WP_ESignature__WP_Forms_Digital_Signature_documentation'
wp option delete 'remove_rating_widget_wpform'

# Delete Transients
wp transient delete '_esign_wpform_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'esig-wpform-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'esig-wpform-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'esig-wpform-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'esig-wpform-settings'"
