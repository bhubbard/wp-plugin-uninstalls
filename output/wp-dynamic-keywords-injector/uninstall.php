<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('srx_canonical_check');
delete_site_option('srx_canonical_check');
delete_option('srx_internal_check');
delete_site_option('srx_internal_check');
delete_option('srx_metaval_check');
delete_site_option('srx_metaval_check');
delete_option('srx-metatitle-check');
delete_site_option('srx-metatitle-check');
delete_option('srx-whitelist-kwd');
delete_site_option('srx-whitelist-kwd');
delete_option('srx-whitelist-kwd-box');
delete_site_option('srx-whitelist-kwd-box');
delete_option('srx_popup_open');
delete_site_option('srx_popup_open');

