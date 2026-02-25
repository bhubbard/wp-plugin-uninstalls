<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('arukereso_webapi_kulcs');
delete_site_option('arukereso_webapi_kulcs');

