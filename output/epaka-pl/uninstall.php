<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('epakaAdminToken');
delete_site_option('epakaAdminToken');
delete_option('epakaShippingCourierMapping');
delete_site_option('epakaShippingCourierMapping');
delete_option('epakaSession');
delete_site_option('epakaSession');
delete_option('epakaE');
delete_site_option('epakaE');
delete_option('epakaP');
delete_site_option('epakaP');
delete_option('epaka_plugin_version');
delete_site_option('epaka_plugin_version');
delete_option('epaka_updated_metadata');
delete_site_option('epaka_updated_metadata');
delete_option('epaka_credits_agree');
delete_site_option('epaka_credits_agree');

