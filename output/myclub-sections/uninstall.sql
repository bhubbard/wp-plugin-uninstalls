-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('myclub_sections_calendar_title', 'myclub_sections_section_calendar_desktop_views', 'myclub_sections_section_calendar_desktop_views_default', 'myclub_sections_section_calendar_mobile_views', 'myclub_sections_section_calendar_mobile_views_default', 'myclub_sections_section_calendar_show_week_numbers', 'myclub_sections_club_calendar_title', 'myclub_sections_club_calendar_desktop_views', 'myclub_sections_club_calendar_desktop_views_default', 'myclub_sections_club_calendar_mobile_views', 'myclub_sections_club_calendar_mobile_views_default', 'myclub_sections_club_calendar_show_week_numbers', 'myclub_sections_club_news_title', 'myclub_sections_coming_games_title', 'myclub_sections_description_title', 'myclub_sections_news_title', 'myclub_sections_api_key', 'myclub_sections_section_slug', 'myclub_sections_section_news_slug', 'myclub_sections_add_news_categories', 'myclub_sections_delete_unused_news', 'myclub_sections_page_description', 'myclub_sections_page_calendar', 'myclub_sections_page_news', 'myclub_sections_page_coming_games', 'myclub_sections_page_template', 'myclub_sections_show_items_order', 'myclub_sections_remove_unused_news_items');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('myclub_sections_description', 'myclub_sections_id', '_source_image_url', '_wp_page_template', 'myclub_sections_last_updated', 'myclub_groups_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('myclub_sections_description', 'myclub_sections_id', '_source_image_url', '_wp_page_template', 'myclub_sections_last_updated', 'myclub_groups_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('myclub_sections_description', 'myclub_sections_id', '_source_image_url', '_wp_page_template', 'myclub_sections_last_updated', 'myclub_groups_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('myclub_sections_description', 'myclub_sections_id', '_source_image_url', '_wp_page_template', 'myclub_sections_last_updated', 'myclub_groups_id');

