#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'persian_elementor'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'zarinpal_transaction_%'"

