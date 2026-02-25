#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'success-url'
wp option delete 'merchant-key'
wp option delete 'cancelled-url'
wp option delete 'source'
wp option delete 'extra_project_name'

