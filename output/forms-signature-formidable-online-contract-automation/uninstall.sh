#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'esig_global_document_id'
wp option delete 'WP_ESignature__Formidable__Forms_Digital_Signature_documentation'
wp option delete 'WP_ESignature__Formidable_Forms_Digital_Signature_documentation'
wp option delete 'remove_rating_widget_formidable'

# Delete Transients
wp transient delete '_esign_formidableform_redirect'

