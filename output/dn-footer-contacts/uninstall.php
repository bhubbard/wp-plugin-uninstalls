<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dn_footer_contacts-fields');
delete_site_option('dn_footer_contacts-fields');
delete_option('dn_footer_contacts-last_id');
delete_site_option('dn_footer_contacts-last_id');
delete_option('dn_footer_contacts-invitation');
delete_site_option('dn_footer_contacts-invitation');
delete_option('dn_footer_contacts-settings');
delete_site_option('dn_footer_contacts-settings');
delete_option('dn_footer_contacts-stats');
delete_site_option('dn_footer_contacts-stats');

