<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('floating_contacts_options');
delete_site_option('floating_contacts_options');
delete_option('floating_contacts_version');
delete_site_option('floating_contacts_version');
delete_option('floating_contacts_install_date');
delete_site_option('floating_contacts_install_date');

