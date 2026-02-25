<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('epa_default_id');
delete_site_option('epa_default_id');
delete_option('epa_enable');
delete_site_option('epa_enable');
delete_option('epa_bgcolor');
delete_site_option('epa_bgcolor');
delete_option('epa_popup_delay');
delete_site_option('epa_popup_delay');
delete_option('epa_expire');
delete_site_option('epa_expire');
delete_option('epa_popup_padding');
delete_site_option('epa_popup_padding');
delete_option('epa_effect');
delete_site_option('epa_effect');
delete_option('epa_width');
delete_site_option('epa_width');

