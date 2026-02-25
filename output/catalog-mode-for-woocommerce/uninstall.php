<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcpcm_optionsframework');
delete_site_option('wcpcm_optionsframework');
delete_option('wcpcm_options');
delete_site_option('wcpcm_options');

