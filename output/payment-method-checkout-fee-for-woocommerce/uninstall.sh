#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_name_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_name_label'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_name_percent'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_fee_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_fee_amount'"

