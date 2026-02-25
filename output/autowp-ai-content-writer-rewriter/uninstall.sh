#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autowp_settings'
wp option delete 'autowp_show_setup'
wp option delete 'autowp_linking_settings'
wp option delete 'autowp_post_settings'
wp option delete 'autowp_alerts'
wp option delete 'autowp_announcements'
wp option delete 'autowp_dismissed_announcements'
wp option delete 'autowp_rewriting_promptscheme'
wp option delete 'autowp_writing_promptscheme'

# Clear Cron Jobs
wp cron event delete 'autowp_fetch_announcements'
wp cron event delete 'autowp_cron'
wp cron event delete 'autowp_manual_post_rss_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_faq_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_faq_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_faq_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_faq_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'managetoplevel_page_list_tablecolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'managetoplevel_page_list_tablecolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'managetoplevel_page_list_tablecolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'managetoplevel_page_list_tablecolumnshidden'"
