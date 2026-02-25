#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'invelity_sps_connect_options'

# Delete Transients
wp transient delete 'invelity-plugins-description'
wp transient delete 'invelity-plugins-ad'
wp transient delete 'invelity-sps-connect-ad'

