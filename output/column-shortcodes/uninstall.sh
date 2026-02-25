#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'cpsh_plugin_admin_columns_info'
wp transient delete 'cpsh_plugin_timeout'

