#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wmpci_options'
wp option delete 'wmpci_plugin_version'

# Delete Transients
wp transient delete 'wmpci_install_notice'

