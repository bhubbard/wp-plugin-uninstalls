#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'syncio_access_token'
wp option delete 'syncio_installer_data'
wp option delete 'syncio_plugin_just_activated'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_weight_unit'

