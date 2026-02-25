-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_math_size', 'wp_math_mail', 'wp_math_only_mail', 'wp_math_round', 'wp_math_static');

