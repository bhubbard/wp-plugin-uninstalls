<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ccpact_db_version');
delete_site_option('ccpact_db_version');
delete_option('ccpact_privacy_api_key_tmp');
delete_site_option('ccpact_privacy_api_key_tmp');
delete_option('ccpact_privacy_mode');
delete_site_option('ccpact_privacy_mode');
delete_option('ccpact_privacy_domain_tmp');
delete_site_option('ccpact_privacy_domain_tmp');
delete_option('ccpact_paranoid_metadata');
delete_site_option('ccpact_paranoid_metadata');
delete_option('ccpact_sane_metadata');
delete_site_option('ccpact_sane_metadata');
delete_option('ccpact_privacy_api_key');
delete_site_option('ccpact_privacy_api_key');
delete_option('ccpact_privacy_domain');
delete_site_option('ccpact_privacy_domain');
delete_option('ccpact_privacy_mode_tmp');
delete_site_option('ccpact_privacy_mode_tmp');

