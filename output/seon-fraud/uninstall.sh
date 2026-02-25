#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seon_licence_key'
wp option delete 'seon_activate_agent'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_seon_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_seon_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_seon_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_seon_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_seon_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_seon_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_seon_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_seon_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_seon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_seon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_seon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_seon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
