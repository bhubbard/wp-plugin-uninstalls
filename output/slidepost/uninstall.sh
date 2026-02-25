#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slidepost_categories'
wp option delete 'slidepost_order'
wp option delete 'slidepost_autoplay'
wp option delete 'slidepost_css'
wp option delete 'slidepost_template'
wp option delete 'slidepost_page_slug'
wp option delete 'slidepost_plugin_url'
wp option delete 'slidepost_custom_name'
wp option delete 'slidepost_custom_logo_url'
wp option delete 'slidepost_custom_footer'
wp option delete 'slidepost_random_vertical'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rentalprice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rentalprice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rentalprice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rentalprice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timeshare'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timeshare'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timeshare'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timeshare'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'longtermrental'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'longtermrental'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'longtermrental'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'longtermrental'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'summerrental'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'summerrental'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'summerrental'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'summerrental'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'winterrental'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'winterrental'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'winterrental'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'winterrental'"
