#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmk-woocommerce-position'
wp option delete 'tmk-data'
wp option delete 'tmk-status'
wp option delete 'tmk-default-script'
wp option delete 'tmk-button-design'

