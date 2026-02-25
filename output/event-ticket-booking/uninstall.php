<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('evtb_qr_code_url');
delete_site_option('evtb_qr_code_url');

// Delete Transients
delete_transient('evtb_event_data');
delete_site_transient('evtb_event_data');

