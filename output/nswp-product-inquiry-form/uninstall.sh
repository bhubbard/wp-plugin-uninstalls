#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nswp_pif_opts'
wp option delete 'nswp_pif_plugin_options'

# Delete Transients
wp transient delete 'nswp_pif_install_notice'

