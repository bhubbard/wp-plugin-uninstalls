#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_api_enabled'
wp option delete 'woocommerce_snappic_settings'

# Delete Transients
wp transient delete '_snappic_activation_redirect'

