<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_revisions');
delete_site_option('plugin_revisions');
delete_option('eos_pv_core_versions');
delete_site_option('eos_pv_core_versions');

