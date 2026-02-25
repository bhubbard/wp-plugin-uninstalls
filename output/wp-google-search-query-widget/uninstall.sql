-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpgqb_username', 'wpgqb_userpassword', 'wpgqb_timespan', 'wpgqb_exclude', 'wpgqb_gaacount', 'wpgqb_count', 'wpgqb_levels', 'wpgqb_searchbase', 'wpgqb_title', 'wpgqb_cachettl');

