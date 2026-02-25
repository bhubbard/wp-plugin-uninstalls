<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lcf_recaptcha_v3_secret_key');
delete_site_option('lcf_recaptcha_v3_secret_key');
delete_option('lcf_recaptcha_v3_site_key');
delete_site_option('lcf_recaptcha_v3_site_key');

