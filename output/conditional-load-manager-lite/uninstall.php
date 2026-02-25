<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pagespsc_conditions');
delete_site_option('pagespsc_conditions');
delete_option('pagespsc_mu_plugin_version');
delete_site_option('pagespsc_mu_plugin_version');
delete_option('pagespsc_mu_plugin_failed');
delete_site_option('pagespsc_mu_plugin_failed');
delete_option('pagespsc_version');
delete_site_option('pagespsc_version');

// Delete Transients
delete_transient('pagespsc_admin_error');
delete_site_transient('pagespsc_admin_error');

