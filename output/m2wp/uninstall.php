<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('m2i_mage_default_store_code');
delete_site_option('m2i_mage_default_store_code');
delete_option('m2i_mage_base_url');
delete_site_option('m2i_mage_base_url');
delete_option('m2i_notices');
delete_site_option('m2i_notices');

