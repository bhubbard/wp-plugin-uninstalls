<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gNewsAnnouncementtype');
delete_site_option('gNewsAnnouncementtype');
delete_option('gNewsAnnouncementorder');
delete_site_option('gNewsAnnouncementorder');
delete_option('gNewsAnnouncementfont');
delete_site_option('gNewsAnnouncementfont');
delete_option('gNewsAnnouncementfontsize');
delete_site_option('gNewsAnnouncementfontsize');
delete_option('gNewsAnnouncementfontweight');
delete_site_option('gNewsAnnouncementfontweight');
delete_option('gNewsAnnouncementfontcolor');
delete_site_option('gNewsAnnouncementfontcolor');
delete_option('gNewsAnnouncementwidth');
delete_site_option('gNewsAnnouncementwidth');
delete_option('gNewsAnnouncementheight');
delete_site_option('gNewsAnnouncementheight');
delete_option('gNewsAnnouncementslidetimeout');
delete_site_option('gNewsAnnouncementslidetimeout');
delete_option('gNewsAnnouncementslidedirection');
delete_site_option('gNewsAnnouncementslidedirection');
delete_option('gNewsAnnouncementtextalign');
delete_site_option('gNewsAnnouncementtextalign');
delete_option('gNewsAnnouncementtextvalign');
delete_site_option('gNewsAnnouncementtextvalign');
delete_option('gNewsAnnouncementnoannouncement');
delete_site_option('gNewsAnnouncementnoannouncement');
delete_option('gNews_pluginversion');
delete_site_option('gNews_pluginversion');
delete_option('gNewsAnnouncementtitle');
delete_site_option('gNewsAnnouncementtitle');
delete_option('gNewsAnnouncementnoannouncement ');
delete_site_option('gNewsAnnouncementnoannouncement ');
delete_option('_current_nas_db_version');
delete_site_option('_current_nas_db_version');

// Delete Transients
delete_transient('_nas_activation_redirect');
delete_site_transient('_nas_activation_redirect');

