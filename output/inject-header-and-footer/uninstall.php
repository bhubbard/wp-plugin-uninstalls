<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('daq_ihaf_header_content');
delete_site_option('daq_ihaf_header_content');
delete_option('daq_ihaf_footer_content');
delete_site_option('daq_ihaf_footer_content');

