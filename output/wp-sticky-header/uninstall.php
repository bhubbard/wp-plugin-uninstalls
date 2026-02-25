<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsh_enable');
delete_site_option('wpsh_enable');
delete_option('wpsh_bg_color');
delete_site_option('wpsh_bg_color');
delete_option('wpsh_text_color');
delete_site_option('wpsh_text_color');
delete_option('wpsh_close_icon_color');
delete_site_option('wpsh_close_icon_color');
delete_option('wpsh_closable');
delete_site_option('wpsh_closable');
delete_option('wpsh_position');
delete_site_option('wpsh_position');
delete_option('wpsh_content');
delete_site_option('wpsh_content');
delete_option('wpsh_where');
delete_site_option('wpsh_where');
delete_option('wpsh_auto_close');
delete_site_option('wpsh_auto_close');
delete_option('wpsh_page_ids');
delete_site_option('wpsh_page_ids');

