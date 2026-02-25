-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_number_of_posts', 'show_date', 'show_new_gif', 'new_gif_post_count');

