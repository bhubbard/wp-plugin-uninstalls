<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('n4p_option_2');
delete_site_option('n4p_option_2');
delete_option('n4p_option_1');
delete_site_option('n4p_option_1');
delete_option('n4p_option_3');
delete_site_option('n4p_option_3');
delete_option('n4p_option_4');
delete_site_option('n4p_option_4');
delete_option('n4p_option_5');
delete_site_option('n4p_option_5');
delete_option('n4p_option_6');
delete_site_option('n4p_option_6');
delete_option('n4p_option_7');
delete_site_option('n4p_option_7');

