<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aktt_gatagger_utm_source');
delete_site_option('aktt_gatagger_utm_source');
delete_option('aktt_gatagger_utm_medium');
delete_site_option('aktt_gatagger_utm_medium');
delete_option('aktt_gatagger_utm_term');
delete_site_option('aktt_gatagger_utm_term');
delete_option('aktt_gatagger_utm_content');
delete_site_option('aktt_gatagger_utm_content');
delete_option('aktt_gatagger_utm_campaign');
delete_site_option('aktt_gatagger_utm_campaign');

