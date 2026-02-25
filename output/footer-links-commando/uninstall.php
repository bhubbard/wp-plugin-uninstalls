<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('footer-links-commando_8abe_activated');
delete_site_option('footer-links-commando_8abe_activated');

