<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gf_never_expire_activation_time');
delete_site_option('gf_never_expire_activation_time');
delete_option('gf_never_expire_plugin_notices_dismissed');
delete_site_option('gf_never_expire_plugin_notices_dismissed');
delete_option('gf_never_expire_load_position');
delete_site_option('gf_never_expire_load_position');

