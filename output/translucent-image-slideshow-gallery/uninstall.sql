-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('TISG_width', 'TISG_height', 'TISG_delay', 'TISG_speed', 'TISG_dir', 'TISG_link', 'TISG_title', 'TISG_dir_1', 'TISG_link_1', 'TISG_dir_2', 'TISG_link_2', 'TISG_dir_3', 'TISG_link_3', 'TISG_dir_4', 'TISG_link_4');

