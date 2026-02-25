#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pmpro_gateway'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pmpro_aurpay_level_%'"

