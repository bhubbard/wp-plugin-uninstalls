<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpenq_scripts_path');
delete_site_option('wpenq_scripts_path');
delete_option('wpenq_scripts_cond');
delete_site_option('wpenq_scripts_cond');
delete_option('wpenq_styles_path');
delete_site_option('wpenq_styles_path');
delete_option('wpenq_styles_cond');
delete_site_option('wpenq_styles_cond');

