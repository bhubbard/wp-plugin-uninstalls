#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WSBPN_WPSetting'

# Delete Transients
wp transient delete 'wsbpn_transient_error'

