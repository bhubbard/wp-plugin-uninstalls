#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_weight'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_length'"

