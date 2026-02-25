#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plwao_options'
wp option delete 'plwao_plugin_version'

# Delete Transients
wp transient delete 'plwao_install_notice'

