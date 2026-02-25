<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('meta-theme-colour-group-colour');
delete_site_option('meta-theme-colour-group-colour');

