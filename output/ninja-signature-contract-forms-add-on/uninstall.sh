#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ninja_forms_load_deprecated'
wp option delete 'remove_rating_widget_ninja'
wp option delete 'esig_global_document_id'
wp option delete 'WP_ESignature__Ninja_Forms_Digital_Signature_documentation'

# Delete Transients
wp transient delete '_esign_ninja_redirect'

