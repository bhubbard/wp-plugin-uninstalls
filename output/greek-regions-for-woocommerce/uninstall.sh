#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'grwc_activation_notice'

