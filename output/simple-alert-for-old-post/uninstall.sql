-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_alert_for_old_post_is_show_single', 'simple_alert_for_old_post_is_show_page', 'simple_alert_for_old_post_date', 'simple_alert_for_old_post_date_type', 'simple_alert_for_old_post_theme', 'simple_alert_for_old_post_icon', 'simple_alert_for_old_post_message');
DELETE FROM wp_options WHERE option_name LIKE 'simple_alert_for_old_post_%';

