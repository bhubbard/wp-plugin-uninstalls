<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cmx_ccm_call_dir_target');
delete_site_option('cmx_ccm_call_dir_target');
delete_option('cmx_ccm_vers');
delete_site_option('cmx_ccm_vers');
delete_option('cmx_ccm_ip_whitelist');
delete_site_option('cmx_ccm_ip_whitelist');

