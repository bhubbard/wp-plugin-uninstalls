#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qform_main_token'

# Delete Transients
wp transient delete 'qform_form_errors'
wp transient delete 'qform_form_success'

