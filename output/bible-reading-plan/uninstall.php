<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aaa');
delete_site_option('aaa');
delete_option('ft_brp_widget_title');
delete_site_option('ft_brp_widget_title');
delete_option('ft_brp_widget_linked');
delete_site_option('ft_brp_widget_linked');
delete_option('ft_brp_widget_version');
delete_site_option('ft_brp_widget_version');

