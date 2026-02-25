<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_advid');
delete_site_option('fs_advid');
delete_option('fs_conf_append');
delete_site_option('fs_conf_append');

