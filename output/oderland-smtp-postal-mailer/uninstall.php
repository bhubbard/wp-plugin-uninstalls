<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oderland_smtp_postal_mailer_version');
delete_site_option('oderland_smtp_postal_mailer_version');
delete_option('oderland_smtp_postal_mailer');
delete_site_option('oderland_smtp_postal_mailer');
delete_option('oderland_smtp_postal_mailer_old_plugin_handled');
delete_site_option('oderland_smtp_postal_mailer_old_plugin_handled');
delete_option('smtp_postal');
delete_site_option('smtp_postal');
delete_option('smtp_postal_version');
delete_site_option('smtp_postal_version');
delete_option('smtp_postal_notices');
delete_site_option('smtp_postal_notices');
delete_option('oderland_smtp_postal_mailer_notices');
delete_site_option('oderland_smtp_postal_mailer_notices');

