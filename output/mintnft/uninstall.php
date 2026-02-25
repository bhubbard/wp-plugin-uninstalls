<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('MintNFT_option_name');
delete_site_option('MintNFT_option_name');
delete_option('MintToken');
delete_site_option('MintToken');
delete_option('Mintdeployeraddress');
delete_site_option('Mintdeployeraddress');
delete_option('MintOwnerEmail');
delete_site_option('MintOwnerEmail');
delete_option('MintApikey');
delete_site_option('MintApikey');

