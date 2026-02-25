#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ach_upnm_options'

# Delete Transients
wp transient delete 'achupnm-admin-notice-on-activation'

