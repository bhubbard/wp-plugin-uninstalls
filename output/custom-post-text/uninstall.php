<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('customposttext_postheader');
delete_site_option('customposttext_postheader');
delete_option('customposttext_postfooter');
delete_site_option('customposttext_postfooter');

