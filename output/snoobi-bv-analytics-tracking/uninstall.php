<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('snoobianalyticsplugin_type');
delete_site_option('snoobianalyticsplugin_type');
delete_option('snoobianalyticsplugin_partner_id');
delete_site_option('snoobianalyticsplugin_partner_id');
delete_option('snoobianalyticsplugin_snoobi_id');
delete_site_option('snoobianalyticsplugin_snoobi_id');
delete_option('snoobianalyticsplugin_anchors');
delete_site_option('snoobianalyticsplugin_anchors');
delete_option('snoobianalyticsplugin_cookies');
delete_site_option('snoobianalyticsplugin_cookies');
delete_option('snoobianalyticsplugin_location');
delete_site_option('snoobianalyticsplugin_location');

