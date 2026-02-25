<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ob_inf_scr_tf_load_text');
delete_site_option('ob_inf_scr_tf_load_text');
delete_option('ob_inf_scr_tf_done_text');
delete_site_option('ob_inf_scr_tf_done_text');

