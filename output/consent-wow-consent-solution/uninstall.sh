#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'consentwow_forms'
wp option delete 'consentwow_forms_next_id'
wp option delete 'consentwow_api_token'

# Delete Transients
wp transient delete 'consentwow_consent_purposes'
wp transient delete 'consentwow_form_notice'

