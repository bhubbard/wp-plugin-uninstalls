<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('I3GEEK_MIP_NOTICE');
delete_site_option('I3GEEK_MIP_NOTICE');

// Delete Transients
delete_transient('I3GEEK_MIP_UPDATE_FLAG');
delete_site_transient('I3GEEK_MIP_UPDATE_FLAG');

