<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gf_new_mailpoet_plugin_deferred_admin_notices');
delete_site_option('gf_new_mailpoet_plugin_deferred_admin_notices');
delete_option('gf_new_mailpoet_plugin_page');
delete_site_option('gf_new_mailpoet_plugin_page');

