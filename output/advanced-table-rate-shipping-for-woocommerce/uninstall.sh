#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'test_option'
wp option delete 'acotrs_activation_license_key'
wp option delete 'acotrs_activation_license_status'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'priority'"
