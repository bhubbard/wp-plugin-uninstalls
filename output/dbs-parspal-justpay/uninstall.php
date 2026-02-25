<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('DBS_PP_JP_Merchant');
delete_site_option('DBS_PP_JP_Merchant');
delete_option('DBS_PP_JP_Password');
delete_site_option('DBS_PP_JP_Password');
delete_option('DBSfuncy');
delete_site_option('DBSfuncy');

