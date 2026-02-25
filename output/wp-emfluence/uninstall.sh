#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emfluence_global'
wp option delete 'emfl_widget_recaptcha'

# Delete Transients
wp transient delete 'emfl-access-token-validation'

