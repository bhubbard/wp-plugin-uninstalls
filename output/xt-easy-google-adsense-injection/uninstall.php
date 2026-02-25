<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xt_go_advt_1_code');
delete_site_option('xt_go_advt_1_code');
delete_option('xt_go_advt_2_code');
delete_site_option('xt_go_advt_2_code');
delete_option('xt_go_advt_3_code');
delete_site_option('xt_go_advt_3_code');
delete_option('xt_go_advt_4_code');
delete_site_option('xt_go_advt_4_code');
delete_option('xt_go_advt_5_code');
delete_site_option('xt_go_advt_5_code');

