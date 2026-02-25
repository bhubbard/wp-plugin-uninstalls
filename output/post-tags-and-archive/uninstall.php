<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pta-posttagsandarchives_options');
delete_site_option('pta-posttagsandarchives_options');

