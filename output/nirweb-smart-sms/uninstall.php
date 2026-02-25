<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nirweb_smart_sms_perfix');
delete_site_option('nirweb_smart_sms_perfix');

