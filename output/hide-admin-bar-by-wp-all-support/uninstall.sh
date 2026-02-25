#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpas_admin_bar_settings'

# Delete Transients
wp transient delete '_wpas_adminbar_activation_redirect'

