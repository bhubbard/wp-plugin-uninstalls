<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seoturtlelud_date_format');
delete_site_option('seoturtlelud_date_format');
delete_option('seoturtlelud_show_prefix');
delete_site_option('seoturtlelud_show_prefix');
delete_option('seoturtlelud_prefix_text');
delete_site_option('seoturtlelud_prefix_text');

