#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'siteorigin_installer_admin_dismissed'
wp option delete 'siteorigin_premium_affiliate_id'
wp option delete 'siteorigin_installer'
wp option delete 'siteorigin_custom_file'
wp option delete 'so_css_output_location'
wp option delete 'so_css_editor_theme'
wp option delete 'so_css_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%]'"

# Delete Transients
wp transient delete 'siteorigin_installer_product_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'socss_hide_gs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'socss_hide_gs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'socss_hide_gs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'socss_hide_gs'"
