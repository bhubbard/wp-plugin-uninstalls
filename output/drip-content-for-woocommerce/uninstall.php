<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dripcofo_upgrade_url');
delete_site_option('dripcofo_upgrade_url');
delete_option('dripcofo_docs_url');
delete_site_option('dripcofo_docs_url');

