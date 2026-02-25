#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sos-shelly_dev1'

# Delete Transients
wp transient delete 'settings_errors'

