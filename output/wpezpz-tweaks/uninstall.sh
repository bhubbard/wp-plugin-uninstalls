#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-customizing-branding'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-performance'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-security'"
wp option delete 'wpezpz_backups'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-admin_colors'"
wp option delete 'wpezpz_dashboard_widgets'
wp option delete 'default_post_edit_rows'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings'"
wp option delete 'wpezpz_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_fake-meta'"
wp option delete 'wpezpz_tweaks_install_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ezpz_tweaks_review_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ezpz_tweaks_review_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ezpz_tweaks_review_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ezpz_tweaks_review_notice_dismissed'"
