<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('s22survey_widget_title');
delete_site_option('s22survey_widget_title');
delete_option('s22survey_dofollow');
delete_site_option('s22survey_dofollow');
delete_option('s22survey_disable_default_style');
delete_site_option('s22survey_disable_default_style');

