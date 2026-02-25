<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('wpvn_ty_gia_ngoai_te');
delete_site_transient('wpvn_ty_gia_ngoai_te');

