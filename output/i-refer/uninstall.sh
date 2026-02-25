#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'i-refer-api-url'
wp option delete 'i-refer-api-keys'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings'"
wp option delete 'admin_phone'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sites'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_promo_hide'"

