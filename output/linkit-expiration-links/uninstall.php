<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('linkit_icon_link');
delete_site_option('linkit_icon_link');
delete_option('linkit_label_link');
delete_site_option('linkit_label_link');
delete_option('linkit_icon_clicks');
delete_site_option('linkit_icon_clicks');
delete_option('linkit_label_clicks');
delete_site_option('linkit_label_clicks');
delete_option('linkit_icon_expires');
delete_site_option('linkit_icon_expires');
delete_option('linkit_label_expires');
delete_site_option('linkit_label_expires');
delete_option('linkit_icon_status');
delete_site_option('linkit_icon_status');
delete_option('linkit_label_status');
delete_site_option('linkit_label_status');
delete_option('linkit_color_active_bg');
delete_site_option('linkit_color_active_bg');
delete_option('linkit_color_active_text');
delete_site_option('linkit_color_active_text');
delete_option('linkit_color_expired_bg');
delete_site_option('linkit_color_expired_bg');
delete_option('linkit_color_expired_text');
delete_site_option('linkit_color_expired_text');
delete_option('linkit_color_maxclicks_bg');
delete_site_option('linkit_color_maxclicks_bg');
delete_option('linkit_color_maxclicks_text');
delete_site_option('linkit_color_maxclicks_text');
delete_option('linkitex_expired_message');
delete_site_option('linkitex_expired_message');
delete_option('linkit_cleanup_on_uninstall');
delete_site_option('linkit_cleanup_on_uninstall');
delete_option('linkit_expired_message');
delete_site_option('linkit_expired_message');
delete_option('linkitex_cleanup_on_uninstall');
delete_site_option('linkitex_cleanup_on_uninstall');

