#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcpscwc_sf_optin'

# Delete Transients
wp transient delete 'wcpscwc_install_notice'
wp transient delete 'espbw_plugins_data'

