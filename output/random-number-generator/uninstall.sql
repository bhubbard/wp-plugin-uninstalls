-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('random_number_generator_shortcode', 'random_number_generator_parent_menu', 'random_number_generator_from', 'random_number_generator_to', 'random_number_generator_format');

