<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mythic_ss_header_id');
delete_site_option('mythic_ss_header_id');
delete_option('mythic_ss_offset_amount');
delete_site_option('mythic_ss_offset_amount');

