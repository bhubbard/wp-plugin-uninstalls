#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gtmsk_enable_frontend'
wp option delete 'gtmsk_enable_backend'

# Delete Transients
wp transient delete 'gtmsk_activation_notice'

