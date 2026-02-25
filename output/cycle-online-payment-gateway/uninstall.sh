#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cyclebit_db_version'
wp option delete 'woocommerce_force_ssl_checkout'

