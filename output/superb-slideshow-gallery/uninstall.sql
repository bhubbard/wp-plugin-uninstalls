-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssg_title', 'ssg_width', 'ssg_height', 'ssg_pause', 'ssg_fadeduration', 'ssg_descreveal', 'ssg_descreveal1', 'ssg_cycles', 'ssg_random', 'ssg_type');

