<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('evandrosouza89_sdvp_options');
delete_site_option('evandrosouza89_sdvp_options');

