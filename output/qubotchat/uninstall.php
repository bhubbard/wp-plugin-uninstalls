<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qubotchat_do_activation_redirect');
delete_site_option('qubotchat_do_activation_redirect');
delete_option('qubotSitePages');
delete_site_option('qubotSitePages');
delete_option('qubotToken');
delete_site_option('qubotToken');

