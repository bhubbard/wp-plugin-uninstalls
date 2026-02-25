<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ccax_options');
delete_site_option('ccax_options');
delete_option('cookie_notice_options');
delete_site_option('cookie_notice_options');
delete_option('cca_configcodes');
delete_site_option('cca_configcodes');
delete_option('CCA_WID_VERSION');
delete_site_option('CCA_WID_VERSION');
delete_option('CCA_VIRGIN_INSTALL');
delete_site_option('CCA_VIRGIN_INSTALL');
delete_option('ccax_post_widgets');
delete_site_option('ccax_post_widgets');
delete_option('cc_maxmind_status');
delete_site_option('cc_maxmind_status');
delete_option('ccax_maxmind_status');
delete_site_option('ccax_maxmind_status');

