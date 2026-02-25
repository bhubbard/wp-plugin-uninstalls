-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('most_read_days_number', 'most_read_post_number', 'most_read_show_read_counter', 'most_read_posts');

