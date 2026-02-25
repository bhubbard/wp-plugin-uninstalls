<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('anp_color_back_num');
delete_site_option('anp_color_back_num');
delete_option('anp_color_lett');
delete_site_option('anp_color_lett');
delete_option('anp_color_text_num');
delete_site_option('anp_color_text_num');

