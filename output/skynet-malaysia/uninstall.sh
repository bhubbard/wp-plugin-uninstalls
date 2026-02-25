#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_skynet_settings'
wp option delete 'wc_skynet_db_version'

