<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lstunspam_last_change');
delete_site_option('lstunspam_last_change');
delete_option('lstunspam_showmessage');
delete_site_option('lstunspam_showmessage');
delete_option('lstunspam_version');
delete_site_option('lstunspam_version');
delete_option('lstunspam_showfieldupdatemessage');
delete_site_option('lstunspam_showfieldupdatemessage');
delete_option('lstunspam_fieldsMap');
delete_site_option('lstunspam_fieldsMap');
delete_option('lstunspam_field1name');
delete_site_option('lstunspam_field1name');
delete_option('lstunspam_field2name');
delete_site_option('lstunspam_field2name');
delete_option('lstunspam_field3name');
delete_site_option('lstunspam_field3name');
delete_option('lstunspam_field4name');
delete_site_option('lstunspam_field4name');
delete_option('lstunspam_field4val');
delete_site_option('lstunspam_field4val');
delete_option('lstunspam_default_fields');
delete_site_option('lstunspam_default_fields');
delete_option('lstunspam_last_change_version');
delete_site_option('lstunspam_last_change_version');
delete_option('lstunspam_ignorewoocommerce');
delete_site_option('lstunspam_ignorewoocommerce');

