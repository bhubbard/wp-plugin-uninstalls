<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_partnerize_partner_auth_table');
delete_site_option('_partnerize_partner_auth_table');
delete_option('_partnerize_partner_participation_table');
delete_site_option('_partnerize_partner_participation_table');
delete_option('_partnerize_partner_version');
delete_site_option('_partnerize_partner_version');

