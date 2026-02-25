<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('themify_conditional_menus_activation_redirect');
delete_site_option('themify_conditional_menus_activation_redirect');

