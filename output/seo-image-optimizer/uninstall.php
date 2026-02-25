<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weblizar_wsio_options');
delete_site_option('weblizar_wsio_options');
delete_option('weblizar_naf_options');
delete_site_option('weblizar_naf_options');
delete_option('wsio_nht_plugin_do_activation_redirect');
delete_site_option('wsio_nht_plugin_do_activation_redirect');

