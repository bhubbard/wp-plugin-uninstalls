<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mobi_actionbar_global_logo');
delete_site_option('mobi_actionbar_global_logo');
delete_option('mobi_actionbar_global_button_text');
delete_site_option('mobi_actionbar_global_button_text');
delete_option('mobi_actionbar_global_action_link');
delete_site_option('mobi_actionbar_global_action_link');

