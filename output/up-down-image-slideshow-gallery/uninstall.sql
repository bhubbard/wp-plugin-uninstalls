-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('udisg_title', 'udisg_width', 'udisg_height', 'udisg_pause', 'udisg_cycles', 'udisg_persist', 'udisg_slideduration', 'udisg_random', 'udisg_type', 'Lrisg_title', 'Lrisg_width', 'Lrisg_height', 'Lrisg_pause', 'Lrisg_cycles', 'Lrisg_persist', 'Lrisg_slideduration', 'Lrisg_random', 'Lrisg_type', 'udisg_Title');

