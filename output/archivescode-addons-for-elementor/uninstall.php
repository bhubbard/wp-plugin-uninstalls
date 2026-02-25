<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('afe_widgets');
delete_site_option('afe_widgets');
delete_option('afe_first_install_time');
delete_site_option('afe_first_install_time');

