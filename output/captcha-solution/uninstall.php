<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ESSITCO_esscaptcha_solution_status');
delete_site_option('ESSITCO_esscaptcha_solution_status');
delete_option('ESSITCO_captcha_solution_attempts');
delete_site_option('ESSITCO_captcha_solution_attempts');

