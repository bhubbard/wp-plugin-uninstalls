<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('BotBanish_do_activation_redirect');
delete_site_option('BotBanish_do_activation_redirect');
delete_option('botbanishfirewall_client_option_name');
delete_site_option('botbanishfirewall_client_option_name');

