-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bs_math_captcha_for_elementor_error', 'bs_math_captcha_signs_plus', 'bs_math_captcha_signs_minus', 'bs_math_captcha_signs_multiply');

