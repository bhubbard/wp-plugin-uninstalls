-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('announcement_bar_settings', 'the_frosty_dashboard_widget_options');
DELETE FROM wp_options WHERE option_name LIKE 'feed_%';
DELETE FROM wp_options WHERE option_name LIKE 'feed_mod_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_announcement_link', '_announcement_count', '_announcement_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_announcement_link', '_announcement_count', '_announcement_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_announcement_link', '_announcement_count', '_announcement_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_announcement_link', '_announcement_count', '_announcement_content');

