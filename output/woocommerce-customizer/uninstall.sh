#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_customizer_active_customizations'
wp option delete 'woocommerce_db_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'wc_customizer_version'

