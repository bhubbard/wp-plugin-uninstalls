#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sveawebpay_deferred_admin_notices'
wp option delete 'woocommerce_default_gateway'
wp option delete 'sveawebpay_plugin_version'

