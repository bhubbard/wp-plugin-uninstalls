<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('EVENT_AGENT_CONFIG_KEY');
delete_site_option('EVENT_AGENT_CONFIG_KEY');
delete_option('EVENT_AGENT_ADMIN_KEY');
delete_site_option('EVENT_AGENT_ADMIN_KEY');
delete_option('EVENT_AGENT_PUBLIC_KEY');
delete_site_option('EVENT_AGENT_PUBLIC_KEY');
delete_option('EVENT_AGENT_URL');
delete_site_option('EVENT_AGENT_URL');
delete_option('Event_Agent_Url');
delete_site_option('Event_Agent_Url');

