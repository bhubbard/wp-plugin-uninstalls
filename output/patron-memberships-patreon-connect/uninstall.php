<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('patreon-patron-membership-override');
delete_site_option('patreon-patron-membership-override');

