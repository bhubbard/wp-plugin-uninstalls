#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_update_plugins'
wp option delete 'trustindex-core-shortcode-inited'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-widget-setted-up'"
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_email_from_name'

