<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('GlassIt_1.0.5_KEY');
delete_site_option('GlassIt_1.0.5_KEY');

