<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lettermint_api_token');
delete_site_option('lettermint_api_token');
delete_option('lettermint_from_email');
delete_site_option('lettermint_from_email');
delete_option('lettermint_from_name');
delete_site_option('lettermint_from_name');
delete_option('lettermint_force_email');
delete_site_option('lettermint_force_email');
delete_option('lettermint_force_from_name');
delete_site_option('lettermint_force_from_name');
delete_option('lettermint_enable_logs');
delete_site_option('lettermint_enable_logs');
delete_option('lettermint_show_advanced');
delete_site_option('lettermint_show_advanced');
delete_option('lettermint_route_slug');
delete_site_option('lettermint_route_slug');
delete_option('lettermint_tag');
delete_site_option('lettermint_tag');
delete_option('lettermint_force_html');
delete_site_option('lettermint_force_html');
delete_option('lettermint_logs');
delete_site_option('lettermint_logs');

