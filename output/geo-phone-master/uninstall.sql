-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ngp_lang', 'ngp_const', 'ngp_rules', 'ngp_multicity_rules', 'ngp_multicity_id', 'ngp_multicity_class', 'ngp_theme', 'ngp_animation', 'ngp_duration', 'ngp_custom_styles');

