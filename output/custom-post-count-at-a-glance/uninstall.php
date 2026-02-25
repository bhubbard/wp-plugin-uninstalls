<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpt_glance_selected_post_types');
delete_site_option('cpt_glance_selected_post_types');

