#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tfcwidgets4wp_install_ping_sent'
wp option delete 'tfcwidgets4wp_options'

# Delete Transients
wp transient delete 'tfcwidgets4wp_catalog_v2'
wp transient delete 'tfcwidgets4wp_catalog_v1'

