<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aspl_qview_button_text');
delete_site_option('aspl_qview_button_text');
delete_option('aspl_qview_button_back_color');
delete_site_option('aspl_qview_button_back_color');
delete_option('aspl_qview_button_text_color');
delete_site_option('aspl_qview_button_text_color');

