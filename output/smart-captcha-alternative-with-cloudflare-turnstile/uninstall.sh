#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_version'
wp option delete 'smartct_keys_verified'
wp option delete 'smartct_keys_rotated_at'
wp option delete 'smartct_settings'
wp option delete 'smartct_evf_validation_error'

# Delete Transients
wp transient delete 'smartct_debug_log'

