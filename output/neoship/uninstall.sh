#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'neoship_login'
wp option delete 'neoship_has_gls'
wp option delete 'neoship_has_packeta'
wp option delete 'neoship_has_123'
wp option delete 'neoship_has_dpd'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parcelshop_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parcelshop_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parcelshop_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parcelshop_id'"
