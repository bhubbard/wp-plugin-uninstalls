#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'newstatpress_externalapi'
wp option delete 'newstatpress_apikey'
wp option delete 'newstatpress_daysinoverviewgraph'
wp option delete 'newstatpress_el_top_days'
wp option delete 'newstatpress_el_os'
wp option delete 'newstatpress_el_browser'
wp option delete 'newstatpress_el_feed'
wp option delete 'newstatpress_el_searchengine'
wp option delete 'newstatpress_el_search'
wp option delete 'newstatpress_el_referrer'
wp option delete 'newstatpress_el_languages'
wp option delete 'newstatpress_el_spiders'
wp option delete 'newstatpress_el_pages'
wp option delete 'newstatpress_el_visitors'
wp option delete 'newstatpress_el_daypages'
wp option delete 'newstatpress_el_ippages'
wp option delete 'newstatpress_dashboard'
wp option delete 'newstatpress_admin_notices'
wp option delete 'newstatpress_collectloggeduser'
wp option delete 'newstatpress_donotcollectspider'
wp option delete 'newstatpress_cryptip'
wp option delete 'newstatpress_ignore_ip'
wp option delete 'newstatpress_ignore_users'
wp option delete 'newstatpress_ignore_permalink'
wp option delete 'newstatpress_stats_offsets'
wp option delete 'newstatpress_mail_notification_emailaddress'
wp option delete 'newstatpress_el_overview'
wp option delete 'newstatpress_exporttool'
wp option delete 'newstatpress_updateint'
wp option delete 'newstatpress_bot_per_page_spybot'
wp option delete 'newstatpress_visits_per_bot_spybot'
wp option delete 'newstatpress_ip_per_page_newspy'
wp option delete 'newstatpress_visits_per_ip_newspy'
wp option delete 'newstatpress_version'
wp option delete 'newstatpress_menutools_cap'
wp option delete 'newstatpress_settings'
wp option delete 'newstatpress_menuoverview_cap'
wp option delete 'newstatpress_menudetails_cap'
wp option delete 'newstatpress_menuvisits_cap'
wp option delete 'newstatpress_menusearch_cap'
wp option delete 'newstatpress_menuoptions_cap'
wp option delete 'newstatpress_mail_notification_info'
wp option delete 'newstatpress_autodelete'
wp option delete 'newstatpress_autodelete_spiders'
wp option delete 'widget_newstatpress'
wp option delete 'widget_newstatpresstopposts'

# Clear Cron Jobs
wp cron event delete 'nsp_mail_notification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'newstatpress_nag_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'newstatpress_nag_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'newstatpress_nag_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'newstatpress_nag_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'newstatpress_nag_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'newstatpress_nag_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'newstatpress_nag_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'newstatpress_nag_status'"
