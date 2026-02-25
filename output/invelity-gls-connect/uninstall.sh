#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'invelity_gls_connect_options'
wp option delete 'invelity_gls_export_options'

# Delete Transients
wp transient delete 'invelity-gls-connect-ad'
wp transient delete 'invelity-plugins-description'
wp transient delete 'invelity-plugins-ad'

