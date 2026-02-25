<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cstm_ntfns_special_content');
delete_site_option('cstm_ntfns_special_content');

