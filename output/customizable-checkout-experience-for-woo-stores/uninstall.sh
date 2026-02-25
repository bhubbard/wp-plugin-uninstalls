#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccews_cfe_settings'
wp option delete 'ccews_cfe_billing_fields'
wp option delete 'ccews_cfe_shipping_fields'
wp option delete 'ccews_cfe_additional_fields'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_fields'"

