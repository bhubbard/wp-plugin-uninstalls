#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_db_version'
wp option delete 'wemono_plugin_version'
wp option delete 'wemono_auto_update_enabled'

# Delete Transients
wp transient delete 'wemono_plugin_data_wc-wemono'

