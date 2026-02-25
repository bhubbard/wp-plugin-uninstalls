#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooiplock_lock_type'
wp option delete 'ip_range_start'
wp option delete 'ip_range_end'
wp option delete 'wooiplock_enable'
wp option delete 'wooiplock_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bypass_ip_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bypass_ip_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bypass_ip_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bypass_ip_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_ip_address'"
