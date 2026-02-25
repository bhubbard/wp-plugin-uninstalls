<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ipb_install_location');
delete_site_option('ipb_install_location');
delete_option('ipb_default_group_membership');
delete_site_option('ipb_default_group_membership');
delete_option('ipb_rounded_profile_pics');
delete_site_option('ipb_rounded_profile_pics');

