<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rdContactOverride');
delete_site_option('rdContactOverride');
delete_option('rdContactName');
delete_site_option('rdContactName');
delete_option('rdContactPhone');
delete_site_option('rdContactPhone');
delete_option('rdContactMobile');
delete_site_option('rdContactMobile');
delete_option('rdContactFax');
delete_site_option('rdContactFax');
delete_option('rdContactEmail');
delete_site_option('rdContactEmail');
delete_option('rdContactStreet');
delete_site_option('rdContactStreet');
delete_option('rdContactCity');
delete_site_option('rdContactCity');
delete_option('rdContactState');
delete_site_option('rdContactState');
delete_option('rdContactZip');
delete_site_option('rdContactZip');
delete_option('rdShowContactName');
delete_site_option('rdShowContactName');
delete_option('rdShowContactPhone');
delete_site_option('rdShowContactPhone');
delete_option('rdShowContactMobile');
delete_site_option('rdShowContactMobile');
delete_option('rdShowContactFax');
delete_site_option('rdShowContactFax');
delete_option('rdShowContactEmail');
delete_site_option('rdShowContactEmail');
delete_option('rdShowContactAddress');
delete_site_option('rdShowContactAddress');

