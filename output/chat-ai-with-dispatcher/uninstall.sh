#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chataiwd_module_settings'
wp option delete 'config_telephone'
wp option delete 'woocommerce_myaccount_page_id'

