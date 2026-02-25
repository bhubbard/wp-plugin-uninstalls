#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_sellapp_settings'
wp option delete 'active_sitewide_plugins'

