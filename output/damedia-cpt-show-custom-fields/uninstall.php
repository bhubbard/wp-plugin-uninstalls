<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('damedia_cpt_show_cfs_settings');
delete_site_option('damedia_cpt_show_cfs_settings');

