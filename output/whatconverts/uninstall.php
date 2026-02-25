<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('whatconverts_profile_id');
delete_site_option('whatconverts_profile_id');
delete_option('whatconverts_footer_load');
delete_site_option('whatconverts_footer_load');

