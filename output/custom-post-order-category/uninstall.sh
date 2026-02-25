#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccpo_order_managers'
wp option delete 'ccpo_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ccpo_category_ordering_%'"

