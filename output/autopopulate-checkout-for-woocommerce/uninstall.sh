#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-options'"
wp option delete 'woocommerce_revcent_payments_settings'

