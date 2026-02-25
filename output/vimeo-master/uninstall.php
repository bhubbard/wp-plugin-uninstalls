<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('down_link_vimeo');
delete_site_option('down_link_vimeo');
delete_option('tsm_quote');
delete_site_option('tsm_quote');

