#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arve_install_date'
wp option delete 'nextgenthemes_arve'
wp option delete 'arve_youtube_api_error'
wp option delete 'arve_version'
wp option delete 'classic-editor-replace'
wp option delete 'arve_options_shortcodes'
wp option delete 'nextgenthemes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'dnh_dismissed_notices'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arve_dismiss_pro_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arve_dismiss_pro_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arve_dismiss_pro_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arve_dismiss_pro_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dnh_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dnh_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dnh_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dnh_dismissed_notices'"
