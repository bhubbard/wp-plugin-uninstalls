<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apa_cli_logo_file');
delete_site_option('apa_cli_logo_file');
delete_option('apa_cli_logo_url');
delete_site_option('apa_cli_logo_url');
delete_option('apa_cli_login_background_color');
delete_site_option('apa_cli_login_background_color');
delete_option('apa_cli_show_server_ip');
delete_site_option('apa_cli_show_server_ip');
delete_option('apa_cli_show_server_hostname');
delete_site_option('apa_cli_show_server_hostname');

