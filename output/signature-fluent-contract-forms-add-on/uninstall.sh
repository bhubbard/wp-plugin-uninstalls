#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fluentform_global_modules_status'
wp option delete 'WP_ESignature__Fluent_Forms_Digital_Signature_documentation'

# Delete Transients
wp transient delete '_esign_fluentform_redirect'

