<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simterm-command-prepend');
delete_site_option('simterm-command-prepend');
delete_option('simterm-type-prepend');
delete_site_option('simterm-type-prepend');
delete_option('simterm-default-delay');
delete_site_option('simterm-default-delay');
delete_option('simterm-last-delay-time');
delete_site_option('simterm-last-delay-time');
delete_option('simterm-default-theme');
delete_site_option('simterm-default-theme');
delete_option('simterm-output-delay-time');
delete_site_option('simterm-output-delay-time');
delete_option('simterm-typing-speed');
delete_site_option('simterm-typing-speed');
delete_option('simterm-transform-chars');
delete_site_option('simterm-transform-chars');
delete_option('simterm-window-title');
delete_site_option('simterm-window-title');
delete_option('simterm-window-statusbar');
delete_site_option('simterm-window-statusbar');
delete_option('simterm-default-animated');
delete_site_option('simterm-default-animated');

