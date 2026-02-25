<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ultimo_bot_credentials');
delete_site_option('ultimo_bot_credentials');
delete_option('ultimo_bots_snippet');
delete_site_option('ultimo_bots_snippet');
delete_option('ultimo_bots_do_redirect');
delete_site_option('ultimo_bots_do_redirect');

