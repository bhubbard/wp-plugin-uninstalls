<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('obi_popup_anyway_url');
delete_site_option('obi_popup_anyway_url');
delete_option('obi_popup_anyway_time');
delete_site_option('obi_popup_anyway_time');
delete_option('obi_popup_anyway_cookie');
delete_site_option('obi_popup_anyway_cookie');

