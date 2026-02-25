<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sar_ocs_apache24_notice');
delete_site_option('sar_ocs_apache24_notice');
delete_option('sar_ocs_ver');
delete_site_option('sar_ocs_ver');
delete_option('sar_ocs_wpc_htaccess');
delete_site_option('sar_ocs_wpc_htaccess');

