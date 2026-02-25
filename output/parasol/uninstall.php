<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('parasol_disabled');
delete_site_transient('parasol_disabled');
delete_transient('parasol_whitelist_domains');
delete_site_transient('parasol_whitelist_domains');

