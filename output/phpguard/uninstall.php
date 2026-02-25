<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('phpguard_auto_install_disabled');
delete_site_option('phpguard_auto_install_disabled');

