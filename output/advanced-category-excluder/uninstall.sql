-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ace_settings_onlyinwidget', 'ace_settings_hide', 'ace_settings_xsg_category', 'sm_options', 'ace_categories_norobots', 'ace_settings_exclude_method', 'ace_categories_is_home', 'ace_version', 'ace_settings_ec3', 'ec3_event_category', 'ace_settings_showempty', 'ace_widget_calendar', 'ace_widget_categories', 'ace_widget_recent_comments', 'widget_recent_entries', 'ace_widget_recent_posts');
DELETE FROM wp_options WHERE option_name LIKE 'ace_link_sections_%';
DELETE FROM wp_options WHERE option_name LIKE 'ace_linkcategory_sections_%';
DELETE FROM wp_options WHERE option_name LIKE 'ace_page_sections_%';
DELETE FROM wp_options WHERE option_name LIKE 'ace_categories_%';
DELETE FROM wp_options WHERE option_name LIKE 'ace_catwidget_%';
DELETE FROM wp_options WHERE option_name LIKE 'ace_pagewidget_%';
DELETE FROM wp_options WHERE option_name LIKE 'ace_settings_%';
DELETE FROM wp_options WHERE option_name LIKE 'ace_linkcat_%';

