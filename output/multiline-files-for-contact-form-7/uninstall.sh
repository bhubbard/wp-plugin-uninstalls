#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mfcf7-zl-admin-do-not-show-pro-tip'
wp option delete 'mfcf7-zl-admin-do-not-show-rating-tip'
wp option delete 'mfcf7_zl_plugin_deactivate_request'

# Delete Transients
wp transient delete 'mfcf7-zl-admin-do-not-show-pro-tip'
wp transient delete 'mfcf7-zl-admin-do-not-show-rating-tip'
wp transient delete 'mfcf7_zl_deactivation_error'

