#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'real_id_license_key'
wp option delete 'real_id_sandbox_license_key'
wp option delete 'real_id_delivery_methods'
wp option delete 'real_id_sandbox_mode'
wp option delete 'real_id_localhost_notice_dismissed'

# Delete Transients
wp transient delete 'real_id_shop'
wp transient delete 'real_id_shop_public_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'real_id_check_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'real_id_check_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'real_id_check_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'real_id_check_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'real_id_check_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'real_id_check_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'real_id_check_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'real_id_check_id'"
