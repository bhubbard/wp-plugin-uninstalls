-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('current_theme', 'smk_sidebar_generator_option', 'smk_sidebar_generator_option_v2');

