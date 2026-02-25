<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('computop_merchant_id');
delete_site_option('computop_merchant_id');
delete_option('computop_encryption_key');
delete_site_option('computop_encryption_key');
delete_option('computop_hash_key');
delete_site_option('computop_hash_key');
delete_option('computop_ideal_issuers');
delete_site_option('computop_ideal_issuers');
delete_option('computop_sandbox_mode');
delete_site_option('computop_sandbox_mode');

