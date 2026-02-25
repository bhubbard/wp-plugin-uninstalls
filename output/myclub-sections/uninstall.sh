#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'myclub_sections_calendar_title'
wp option delete 'myclub_sections_section_calendar_desktop_views'
wp option delete 'myclub_sections_section_calendar_desktop_views_default'
wp option delete 'myclub_sections_section_calendar_mobile_views'
wp option delete 'myclub_sections_section_calendar_mobile_views_default'
wp option delete 'myclub_sections_section_calendar_show_week_numbers'
wp option delete 'myclub_sections_club_calendar_title'
wp option delete 'myclub_sections_club_calendar_desktop_views'
wp option delete 'myclub_sections_club_calendar_desktop_views_default'
wp option delete 'myclub_sections_club_calendar_mobile_views'
wp option delete 'myclub_sections_club_calendar_mobile_views_default'
wp option delete 'myclub_sections_club_calendar_show_week_numbers'
wp option delete 'myclub_sections_club_news_title'
wp option delete 'myclub_sections_coming_games_title'
wp option delete 'myclub_sections_description_title'
wp option delete 'myclub_sections_news_title'
wp option delete 'myclub_sections_api_key'
wp option delete 'myclub_sections_section_slug'
wp option delete 'myclub_sections_section_news_slug'
wp option delete 'myclub_sections_add_news_categories'
wp option delete 'myclub_sections_delete_unused_news'
wp option delete 'myclub_sections_page_description'
wp option delete 'myclub_sections_page_calendar'
wp option delete 'myclub_sections_page_news'
wp option delete 'myclub_sections_page_coming_games'
wp option delete 'myclub_sections_page_template'
wp option delete 'myclub_sections_show_items_order'
wp option delete 'myclub_sections_remove_unused_news_items'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'wp_version_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'myclub_sections_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'myclub_sections_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'myclub_sections_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'myclub_sections_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'myclub_sections_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'myclub_sections_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'myclub_sections_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'myclub_sections_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_source_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_source_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_source_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_source_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'myclub_sections_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'myclub_sections_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'myclub_sections_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'myclub_sections_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'myclub_groups_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'myclub_groups_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'myclub_groups_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'myclub_groups_id'"
