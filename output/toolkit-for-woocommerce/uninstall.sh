#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'geargag_plugins_list'
wp transient delete 'geargag_woocommerce_toolkit_changelog'

