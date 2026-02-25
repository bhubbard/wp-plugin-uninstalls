#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_api_enabled'
wp option delete 'woocommerce_version'

