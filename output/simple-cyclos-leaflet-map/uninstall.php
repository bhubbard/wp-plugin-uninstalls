<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cyclosUsersMap_adminuser');
delete_site_option('cyclosUsersMap_adminuser');
delete_option('cyclosUsersMap_token');
delete_site_option('cyclosUsersMap_token');
delete_option('cyclosUsersMap_adminPassword');
delete_site_option('cyclosUsersMap_adminPassword');
delete_option('cyclosUsersMap_url');
delete_site_option('cyclosUsersMap_url');
delete_option('cyclosUsersMap_groupId');
delete_site_option('cyclosUsersMap_groupId');
delete_option('cyclosUsersMap_websiteName');
delete_site_option('cyclosUsersMap_websiteName');
delete_option('cyclosUsersMap_descriptionName');
delete_site_option('cyclosUsersMap_descriptionName');
delete_option('cyclosUsersMap_width');
delete_site_option('cyclosUsersMap_width');
delete_option('cyclosUsersMap_height');
delete_site_option('cyclosUsersMap_height');
delete_option('cyclosUsersMap_homeLat');
delete_site_option('cyclosUsersMap_homeLat');
delete_option('cyclosUsersMap_homeLon');
delete_site_option('cyclosUsersMap_homeLon');
delete_option('cyclosUsersMap_homeZoom');
delete_site_option('cyclosUsersMap_homeZoom');
delete_option('cyclosUsersMap_references');
delete_site_option('cyclosUsersMap_references');

