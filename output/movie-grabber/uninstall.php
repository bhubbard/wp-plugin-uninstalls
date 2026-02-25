<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smmg_iframeWidth');
delete_site_option('smmg_iframeWidth');
delete_option('smmg_iframeHeight');
delete_site_option('smmg_iframeHeight');
delete_option('smmg_descriptionCustomField');
delete_site_option('smmg_descriptionCustomField');
delete_option('smmg_thumbnailCustomField');
delete_site_option('smmg_thumbnailCustomField');
delete_option('smmg_durationCustomField');
delete_site_option('smmg_durationCustomField');
delete_option('smmg_directorCustomField');
delete_site_option('smmg_directorCustomField');
delete_option('smmg_writerCustomField');
delete_site_option('smmg_writerCustomField');
delete_option('smmg_starsCustomField');
delete_site_option('smmg_starsCustomField');
delete_option('smmg_ratingCustomField');
delete_site_option('smmg_ratingCustomField');
delete_option('smmg_genreCustomField');
delete_site_option('smmg_genreCustomField');
delete_option('smmg_countryCustomField');
delete_site_option('smmg_countryCustomField');
delete_option('smmg_nextpageCustomField');
delete_site_option('smmg_nextpageCustomField');

