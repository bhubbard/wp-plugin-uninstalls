#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enable_attribution_box'
wp option delete 'license'
wp option delete 'site_name'
wp option delete 'my_option_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'license_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'license_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'license_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'license_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attribution_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attribution_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attribution_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attribution_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attribution_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attribution_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attribution_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attribution_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'source_work_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'source_work_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'source_work_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'source_work_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'extra_permissions_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'extra_permissions_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'extra_permissions_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'extra_permissions_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_license'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_license'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_license'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_license'"
