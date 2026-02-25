<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('no_cc_attack_second');
delete_site_option('no_cc_attack_second');
delete_option('no_cc_attack_time');
delete_site_option('no_cc_attack_time');
delete_option('no_cc_attack_redirect_url');
delete_site_option('no_cc_attack_redirect_url');

