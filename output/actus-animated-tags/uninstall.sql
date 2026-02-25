-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ACTUS_ANIT_VERSION', 'ACTUS_ANIT_array', 'ACTUS_ANIT_height', 'ACTUS_ANIT_density', 'ACTUS_ANIT_min_font_size', 'ACTUS_ANIT_max_font_size', 'ACTUS_ANIT_background', 'ACTUS_ANIT_color');

