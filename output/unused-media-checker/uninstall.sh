#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"

# Delete Transients
wp transient delete 'umchk_admin_notice'
wp transient delete 'umchk_pg_admin_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advanced_ads_ad_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advanced_ads_ad_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advanced_ads_ad_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advanced_ads_ad_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
