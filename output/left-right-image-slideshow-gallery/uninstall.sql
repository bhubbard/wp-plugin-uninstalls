-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Lrisg_title', 'Lrisg_width', 'Lrisg_height', 'Lrisg_pause', 'Lrisg_cycles', 'Lrisg_persist', 'Lrisg_slideduration', 'Lrisg_random', 'Lrisg_type', 'Lrisg_Title');

