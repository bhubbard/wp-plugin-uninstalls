<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cyber_disp_position');
delete_site_option('cyber_disp_position');
delete_option('cyber_targetleft');
delete_site_option('cyber_targetleft');
delete_option('cyber_targetright');
delete_site_option('cyber_targetright');
delete_option('cyber_targetop');
delete_site_option('cyber_targetop');
delete_option('cyber_targetbot');
delete_site_option('cyber_targetbot');
delete_option('cyber_shortcode');
delete_site_option('cyber_shortcode');
delete_option('cyber_page_show');
delete_site_option('cyber_page_show');
delete_option('cyber_height');
delete_site_option('cyber_height');
delete_option('cyber_width');
delete_site_option('cyber_width');

