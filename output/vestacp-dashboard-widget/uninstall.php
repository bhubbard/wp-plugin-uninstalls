<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ss88_vestacp_widget_vesta_url');
delete_site_option('ss88_vestacp_widget_vesta_url');
delete_option('ss88_vestacp_widget_vesta_username');
delete_site_option('ss88_vestacp_widget_vesta_username');
delete_option('ss88_vestacp_widget_vesta_hash');
delete_site_option('ss88_vestacp_widget_vesta_hash');
delete_option('ss88_vestacp_widget_vesta_verifyssl');
delete_site_option('ss88_vestacp_widget_vesta_verifyssl');

