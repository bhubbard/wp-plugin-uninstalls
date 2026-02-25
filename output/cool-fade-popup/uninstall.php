<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('PopUpFad_Group');
delete_site_option('PopUpFad_Group');
delete_option('PopUpFad_Random');
delete_site_option('PopUpFad_Random');
delete_option('PopUpFad_Title');
delete_site_option('PopUpFad_Title');
delete_option('PopUpFad_On_Homepage');
delete_site_option('PopUpFad_On_Homepage');
delete_option('PopUpFad_On_Posts');
delete_site_option('PopUpFad_On_Posts');
delete_option('PopUpFad_On_Pages');
delete_site_option('PopUpFad_On_Pages');
delete_option('PopUpFad_On_Archives');
delete_site_option('PopUpFad_On_Archives');
delete_option('PopUpFad_On_Search');
delete_site_option('PopUpFad_On_Search');
delete_option('PopUpFad_Session');
delete_site_option('PopUpFad_Session');
delete_option('PopUpFad_nopopup');
delete_site_option('PopUpFad_nopopup');

