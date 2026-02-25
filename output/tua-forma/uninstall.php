<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tua-forma-smtp-recipients');
delete_site_option('tua-forma-smtp-recipients');
delete_option('tua-forma-error-message');
delete_site_option('tua-forma-error-message');
delete_option('tua-forma-successful-message');
delete_site_option('tua-forma-successful-message');
delete_option('tua-forma-metadata');
delete_site_option('tua-forma-metadata');
delete_option('tua-forma-subject');
delete_site_option('tua-forma-subject');
delete_option('tua-forma-honeypot');
delete_site_option('tua-forma-honeypot');

