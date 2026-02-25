#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'consolety_news_lastupdate'
wp option delete 'consolety_news_id'
wp option delete 'consolety_news_class'
wp option delete 'consolety_news_content'
wp option delete 'consolety_connected'
wp option delete 'last_site_connect_check_user'
wp option delete 'update_site_connect_check_user'
wp option delete 'consolety_site_object_lastupdate'
wp option delete 'consolety_site_object'
wp option delete 'consolety_last_flush'
wp option delete 'consolety_no_sync'
wp option delete 'consolety_export_finished_once'
wp option delete 'consolety_styles'
wp option delete 'consolety_seo_secretkey'
wp option delete 'consolety-design_to_emails'
wp option delete 'consolety-design_period_minutes'
wp option delete 'consolety-design_with_delay'
wp option delete 'consoletySeoKey'
wp option delete 'сonsolety_news_dismiss_id'
wp option delete 'consolety_db_version'
wp option delete 'consolety_copyright'
wp option delete 'consolety_feed_mode'
wp option delete 'consolety_feed_url'
wp option delete 'consolety_event_lastupdate'
wp option delete 'consolety_sync_lastupdate'
wp option delete 'consolety_sync_last_id'
wp option delete 'consolety_site_network'
wp option delete 'consoletySeoDisp'
wp option delete 'consolety_post_types'
wp option delete 'consolety_install_finished'
wp option delete 'install_finished'
wp option delete 'consolety_last_activity'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'consolety-export'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'consolety-export'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'consolety-export'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'consolety-export'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exported_to_consolety'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exported_to_consolety'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exported_to_consolety'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exported_to_consolety'"
