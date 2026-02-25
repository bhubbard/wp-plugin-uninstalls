<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jtdonmet_redirectPageData');
delete_site_option('jtdonmet_redirectPageData');
delete_option('jtdonmet_genOptions');
delete_site_option('jtdonmet_genOptions');
delete_option('jtdonmet_cstmOptions');
delete_site_option('jtdonmet_cstmOptions');
delete_option('jtdonmetplus_getValues');
delete_site_option('jtdonmetplus_getValues');

