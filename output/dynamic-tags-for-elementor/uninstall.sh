#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dynatafo_activation_data'

# Delete Transients
wp transient delete 'dynatafo_admin_notice'

