<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eauth_spf_server_ip');
delete_site_option('eauth_spf_server_ip');
delete_option('eauth_spf_server_ip_custom');
delete_site_option('eauth_spf_server_ip_custom');
delete_option('eauth_from_address_force');
delete_site_option('eauth_from_address_force');
delete_option('eauth_from_address_name');
delete_site_option('eauth_from_address_name');
delete_option('eauth_reply_to');
delete_site_option('eauth_reply_to');
delete_option('eauth_reply_to_name');
delete_site_option('eauth_reply_to_name');
delete_option('eauth_dkim_selector');
delete_site_option('eauth_dkim_selector');
delete_option('eauth_bounce_address_mode');
delete_site_option('eauth_bounce_address_mode');
delete_option('eauth_dkim_domain_custom');
delete_site_option('eauth_dkim_domain_custom');
delete_option('eauth_from_address');
delete_site_option('eauth_from_address');
delete_option('eauth_bounce_address');
delete_site_option('eauth_bounce_address');
delete_option('eauth_dkim_domain');
delete_site_option('eauth_dkim_domain');

// Delete Transients
delete_transient('eauth_org_domain_map');
delete_site_transient('eauth_org_domain_map');

