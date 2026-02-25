<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nutshell_instance_id');
delete_site_option('nutshell_instance_id');
delete_option('nutshell_auth_token');
delete_site_option('nutshell_auth_token');
delete_option('nutshell_domain');
delete_site_option('nutshell_domain');
delete_option('nutshell_subdomain');
delete_site_option('nutshell_subdomain');
delete_option('nutshell_root_domain');
delete_site_option('nutshell_root_domain');
delete_option('nutshell_tld');
delete_site_option('nutshell_tld');
delete_option('mcfx_integrations');
delete_site_option('mcfx_integrations');
delete_option('mcfx_script_active');
delete_site_option('mcfx_script_active');
delete_option('custom_mcfx_config');
delete_site_option('custom_mcfx_config');
delete_option('mcfx_id');
delete_site_option('mcfx_id');
delete_option('nutshell_protocol');
delete_site_option('nutshell_protocol');

