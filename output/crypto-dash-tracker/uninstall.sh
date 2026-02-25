#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_showdashwidget'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dashwidgetcoininfo'"
wp option delete 'Crypto_Dash_Tracker_dashwidgetcoininfo'
wp option delete 'Crypto_Dash_Tracker_showdashwidget'

# Delete Transients
wp transient delete 'crypto-dash-tracker'

