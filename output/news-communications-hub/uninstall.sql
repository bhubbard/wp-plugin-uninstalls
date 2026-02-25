-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pcnch_enable_log', 'pcnch_post_types', 'pcnch_update_types', 'pcnch_display_limit', 'pcnch_first_visit_display_limit', 'pcnch_first_visit_post_types', 'pcnch_localstorage_lifetime', 'pcnch_localstorage_first_visit_lifetime', 'pcnch_transient_key_lifetime', 'pcnch_transient_key_first_visit_lifetime', 'pcnch_post_icons', 'pcnch_list_position', 'pcnch_list_width', 'pcnch_read_icon', 'pcnch_show_logo', 'pcnch_mark_all_as_read', 'pcnch_show_read_items', 'pcnch_hide_read_items', 'pcnch_all_read_message', 'pcnch_custom_notifications', 'pcnch_cron_frequency', 'pcnch_cron_time', 'pcnch_show_welcome_message', 'pcnch_first_visit_notifications', 'pcnch_daily_notifications');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('main_blog_tag');
DELETE FROM wp_usermeta WHERE meta_key IN ('main_blog_tag');
DELETE FROM wp_termmeta WHERE meta_key IN ('main_blog_tag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('main_blog_tag');

