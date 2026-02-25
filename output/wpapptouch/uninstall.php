<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wapt_current_theme');
delete_site_option('wapt_current_theme');
delete_option('wapt_user_agents');
delete_site_option('wapt_user_agents');
delete_option('wapt_current_version');
delete_site_option('wapt_current_version');

