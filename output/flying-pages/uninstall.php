<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('FLYING_PAGES_VERSION');
delete_site_option('FLYING_PAGES_VERSION');
delete_option('flying_pages_config_delay');
delete_site_option('flying_pages_config_delay');
delete_option('flying_pages_config_ignore_keywords');
delete_site_option('flying_pages_config_ignore_keywords');
delete_option('flying_pages_config_max_rps');
delete_site_option('flying_pages_config_max_rps');
delete_option('flying_pages_config_hover_delay');
delete_site_option('flying_pages_config_hover_delay');
delete_option('flying_pages_config_disable_on_login');
delete_site_option('flying_pages_config_disable_on_login');

