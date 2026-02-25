#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zt_mini_cart_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_mini_cart_options'"

