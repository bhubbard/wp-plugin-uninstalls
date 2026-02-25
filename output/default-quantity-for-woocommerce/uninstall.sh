#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%'"
wp option delete 'woocommerce_default_quantity'
wp option delete 'dqfwc_installed'
wp option delete 'dqfwc_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dqfwc_default_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dqfwc_default_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dqfwc_default_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dqfwc_default_quantity'"
