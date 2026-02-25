-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kbtam_content_updated', 'kbtam_activation_date', 'kbtam_show_rating', 'kbtam_black_friday_dismissed', 'widget_kantbtrue_about_me');

