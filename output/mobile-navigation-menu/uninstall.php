<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mnm_option_1');
delete_site_option('mnm_option_1');
delete_option('mnm_option_8');
delete_site_option('mnm_option_8');
delete_option('mnm_option_6');
delete_site_option('mnm_option_6');
delete_option('mnm_option_7');
delete_site_option('mnm_option_7');
delete_option('mnm_option_2');
delete_site_option('mnm_option_2');
delete_option('mnm_option_3');
delete_site_option('mnm_option_3');
delete_option('mnm_option_4');
delete_site_option('mnm_option_4');
delete_option('mnm_option_5');
delete_site_option('mnm_option_5');
delete_option('mnm_option_12');
delete_site_option('mnm_option_12');

