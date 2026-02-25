<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('use_bangla_fonts_options');
delete_site_option('use_bangla_fonts_options');

