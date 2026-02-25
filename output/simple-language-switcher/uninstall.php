<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sls_plugin_langs');
delete_site_option('sls_plugin_langs');
delete_option('sls_plugin_langs_backup');
delete_site_option('sls_plugin_langs_backup');
delete_option('sls_plugin_linking');
delete_site_option('sls_plugin_linking');
delete_option('sls_plugin_linking_backup');
delete_site_option('sls_plugin_linking_backup');
delete_option('sls_plugin_options');
delete_site_option('sls_plugin_options');

