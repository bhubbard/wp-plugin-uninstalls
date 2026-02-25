#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'home-improvement-companion-settings'
wp option delete 'home_improvement_admin_notice_welcome'
wp option delete 'kirki_downloaded_font_files'
wp option delete 'kirki_notices'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"

# Delete Transients
wp transient delete 'kirki_googlefonts_cache'
wp transient delete 'kirki_googlefont_names_cache'
wp transient delete 'kirki_remote_url_contents'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'home_improvement_data_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'home_improvement_data_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'home_improvement_data_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'home_improvement_data_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
