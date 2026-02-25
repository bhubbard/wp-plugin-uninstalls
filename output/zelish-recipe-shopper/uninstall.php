<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('skullzlsh_zelish_config');
delete_site_option('skullzlsh_zelish_config');

