<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcookie_configuration_dP');
delete_site_option('wcookie_configuration_dP');
delete_option('wcookie_configuration_bT');
delete_site_option('wcookie_configuration_bT');
delete_option('wcookie_configuration_bC');
delete_site_option('wcookie_configuration_bC');
delete_option('wcookie_configuration_tC');
delete_site_option('wcookie_configuration_tC');
delete_option('wcookie_configuration_lC');
delete_site_option('wcookie_configuration_lC');
delete_option('wcookie_configuration_bBC');
delete_site_option('wcookie_configuration_bBC');
delete_option('wcookie_configuration_bTC');
delete_site_option('wcookie_configuration_bTC');
delete_option('wcookie_configuration_cC');
delete_site_option('wcookie_configuration_cC');
delete_option('wcookie_configuration');
delete_site_option('wcookie_configuration');

