<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adtaxonomies_tags_described');
delete_site_option('adtaxonomies_tags_described');
delete_option('adtaxonomies_cats_described');
delete_site_option('adtaxonomies_cats_described');
delete_option('adtaxonomies_tags_exclude');
delete_site_option('adtaxonomies_tags_exclude');
delete_option('adtaxonomies_cats_exclude');
delete_site_option('adtaxonomies_cats_exclude');
delete_option('adtaxonomies_tags_advertise');
delete_site_option('adtaxonomies_tags_advertise');

