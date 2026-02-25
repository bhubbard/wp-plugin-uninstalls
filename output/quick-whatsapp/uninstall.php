<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quickwhatsapps_floation_posi_rechts_nach_links');
delete_site_option('quickwhatsapps_floation_posi_rechts_nach_links');
delete_option('quickwhatsapps_floating_posi_unten_nach_oben');
delete_site_option('quickwhatsapps_floating_posi_unten_nach_oben');
delete_option('quickwhatsapp');
delete_site_option('quickwhatsapp');
delete_option('quickwhatsappbutton');
delete_site_option('quickwhatsappbutton');
delete_option('quickwhatsapps_greetings');
delete_site_option('quickwhatsapps_greetings');
delete_option('quickwhatsappsharebutton');
delete_site_option('quickwhatsappsharebutton');
delete_option('quickwhatsappbutton_style');
delete_site_option('quickwhatsappbutton_style');
delete_option('quickwhatsappsharing');
delete_site_option('quickwhatsappsharing');
delete_option('quickwhatsapps_afteraddtocartbutton');
delete_site_option('quickwhatsapps_afteraddtocartbutton');
delete_option('quickwhatsapps_onlineoffline_status');
delete_site_option('quickwhatsapps_onlineoffline_status');
delete_option('quickwhatsapps_floatingbutton_status');
delete_site_option('quickwhatsapps_floatingbutton_status');
delete_option('quickwhatsapps_chatbutton_status');
delete_site_option('quickwhatsapps_chatbutton_status');
delete_option('quickwhatsapps_groupelink');
delete_site_option('quickwhatsapps_groupelink');
delete_option('quickwhatsapps_groupelink2');
delete_site_option('quickwhatsapps_groupelink2');
delete_option('quickwhatsapps_groupelink3');
delete_site_option('quickwhatsapps_groupelink3');
delete_option('quickwhatsapps_groupelink_imgurl');
delete_site_option('quickwhatsapps_groupelink_imgurl');
delete_option('quickwhatsapps_groupelink_imgurl2');
delete_site_option('quickwhatsapps_groupelink_imgurl2');
delete_option('quickwhatsapps_groupelink_imgurl3');
delete_site_option('quickwhatsapps_groupelink_imgurl3');
delete_option('option_name');
delete_site_option('option_name');

