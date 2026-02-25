<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bs_math_captcha_for_elementor_error');
delete_site_option('bs_math_captcha_for_elementor_error');
delete_option('bs_math_captcha_signs_plus');
delete_site_option('bs_math_captcha_signs_plus');
delete_option('bs_math_captcha_signs_minus');
delete_site_option('bs_math_captcha_signs_minus');
delete_option('bs_math_captcha_signs_multiply');
delete_site_option('bs_math_captcha_signs_multiply');

