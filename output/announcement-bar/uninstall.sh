#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'announcement_bar_settings'
wp option delete 'the_frosty_dashboard_widget_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_feed_%' OR option_name LIKE '_site_transient_feed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_feed_mod_%' OR option_name LIKE '_site_transient_feed_mod_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_announcement_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_announcement_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_announcement_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_announcement_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_announcement_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_announcement_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_announcement_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_announcement_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_announcement_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_announcement_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_announcement_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_announcement_content'"
