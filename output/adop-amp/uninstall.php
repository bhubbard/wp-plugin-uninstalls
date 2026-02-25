<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adop_amp_url');
delete_site_option('adop_amp_url');
delete_option('adop_amp_header_date');
delete_site_option('adop_amp_header_date');

