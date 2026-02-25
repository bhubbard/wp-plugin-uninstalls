<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('virtu_mortgage_agent_id');
delete_site_option('virtu_mortgage_agent_id');
delete_option('virtu_mortgage_agent_id_from_url');
delete_site_option('virtu_mortgage_agent_id_from_url');
delete_option('virtu_mortgage_ega_tracking_id');
delete_site_option('virtu_mortgage_ega_tracking_id');

