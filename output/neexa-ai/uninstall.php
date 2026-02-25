<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('neexa-ai-active-options');
delete_site_option('neexa-ai-active-options');
delete_option('neexa_ai_access_token');
delete_site_option('neexa_ai_access_token');
delete_option('do_neexa_ai_activation');
delete_site_option('do_neexa_ai_activation');
delete_option('neexa-ai-options');
delete_site_option('neexa-ai-options');
delete_option('neexa_ai_agents_configs');
delete_site_option('neexa_ai_agents_configs');

