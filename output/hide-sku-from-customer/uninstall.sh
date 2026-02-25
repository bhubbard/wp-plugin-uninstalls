#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sc_hide_sku_enabled'
wp option delete 'sc_hide_sku_hide_admins_front'
wp option delete 'sc_hide_sku_install_time'
wp option delete 'sc_hide_sku_review_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

