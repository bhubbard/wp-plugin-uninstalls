-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('motion_option_boxClass', 'motion_option_offset', 'motion_option_mobile', 'motion_option_live', 'motion_option_customCSS', 'motion_option_motionClass');

