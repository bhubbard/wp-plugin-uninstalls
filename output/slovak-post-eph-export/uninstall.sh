#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spephe_plugin_options'

# Delete Transients
wp transient delete 'eph-admin-notice-example'

