<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('draftnotifyemaillinkspam');
delete_site_option('draftnotifyemaillinkspam');
delete_option('draftnotifyuserlevel');
delete_site_option('draftnotifyuserlevel');
delete_option('draftnotifyauthorlevel');
delete_site_option('draftnotifyauthorlevel');
delete_option('draftnotifyemail');
delete_site_option('draftnotifyemail');
delete_option('draftnotifyemailrevisions');
delete_site_option('draftnotifyemailrevisions');
delete_option('draftnotifyposttypes1');
delete_site_option('draftnotifyposttypes1');
delete_option('draftnotifyposttypes2');
delete_site_option('draftnotifyposttypes2');
delete_option('draftnotifyemailedlist');
delete_site_option('draftnotifyemailedlist');
delete_option('draftnotifycustomheader');
delete_site_option('draftnotifycustomheader');
delete_option('draftnotifyemailpostlink');
delete_site_option('draftnotifyemailpostlink');
delete_option('draftnotifyemailauthorname');
delete_site_option('draftnotifyemailauthorname');
delete_option('draftnotifyemailauthoremail');
delete_site_option('draftnotifyemailauthoremail');
delete_option('draftnotifycustomfooter');
delete_site_option('draftnotifycustomfooter');
delete_option('draftnotifyemailfrom');
delete_site_option('draftnotifyemailfrom');
delete_option('draftnotifyemailreply');
delete_site_option('draftnotifyemailreply');
delete_option('draftnotifyemailsubject');
delete_site_option('draftnotifyemailsubject');

