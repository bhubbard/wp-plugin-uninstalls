<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vbean_meta_maid_htmlhead');
delete_site_option('vbean_meta_maid_htmlhead');
delete_option('vbean_meta_maid_htmlbeforeclosebody');
delete_site_option('vbean_meta_maid_htmlbeforeclosebody');
delete_option('vbean_meta_maid_mobilehtmlhead');
delete_site_option('vbean_meta_maid_mobilehtmlhead');
delete_option('vbean_meta_maid_mobilehtmlbeforeclosebody');
delete_site_option('vbean_meta_maid_mobilehtmlbeforeclosebody');
delete_option('vbean_meta_maid_desktophtmlhead');
delete_site_option('vbean_meta_maid_desktophtmlhead');
delete_option('vbean_meta_maid_desktophtmlbeforeclosebody');
delete_site_option('vbean_meta_maid_desktophtmlbeforeclosebody');

