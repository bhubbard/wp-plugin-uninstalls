<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SME_Settings');
delete_site_option('SME_Settings');
delete_option('SME_smugmugembed_api');
delete_site_option('SME_smugmugembed_api');
delete_option('SME_api_progress');
delete_site_option('SME_api_progress');
delete_option('SME_api_token');
delete_site_option('SME_api_token');
delete_option('SME_SelectedAlbums');
delete_site_option('SME_SelectedAlbums');
delete_option('PS_PhotoSession_options_Types');
delete_site_option('PS_PhotoSession_options_Types');
delete_option('PS_PhotoSession_options_Start_Time');
delete_site_option('PS_PhotoSession_options_Start_Time');
delete_option('PS_PhotoSession_options_Time_Increments-select');
delete_site_option('PS_PhotoSession_options_Time_Increments-select');
delete_option('PS_PhotoSession_options_End_Time');
delete_site_option('PS_PhotoSession_options_End_Time');
delete_option('PS_PhotoSession_options_ShowTakenSessions');
delete_site_option('PS_PhotoSession_options_ShowTakenSessions');
delete_option('PS_PhotoSession_options_Header_Style');
delete_site_option('PS_PhotoSession_options_Header_Style');
delete_option('PS_PhotoSession_options_Link_Style');
delete_site_option('PS_PhotoSession_options_Link_Style');
delete_option('PS_PhotoSession_options_Success_Text');
delete_site_option('PS_PhotoSession_options_Success_Text');
delete_option('SME_SmugMugEmbed_options_AvailableSizes');
delete_site_option('SME_SmugMugEmbed_options_AvailableSizes');
delete_option('SME_SmugMugEmbed_options_DefaultSize');
delete_site_option('SME_SmugMugEmbed_options_DefaultSize');
delete_option('SME_SmugMugEmbed_options_DefaultAlign');
delete_site_option('SME_SmugMugEmbed_options_DefaultAlign');
delete_option('SME_SmugMugEmbed_options_AvailableClickResponse');
delete_site_option('SME_SmugMugEmbed_options_AvailableClickResponse');
delete_option('SME_SmugMugEmbed_options_DefaultClickResponse');
delete_site_option('SME_SmugMugEmbed_options_DefaultClickResponse');
delete_option('SME_SmugMugEmbed_options_DefaultKeywords');
delete_site_option('SME_SmugMugEmbed_options_DefaultKeywords');
delete_option('SME_SmugMugEmbed_options_DefaultCaption');
delete_site_option('SME_SmugMugEmbed_options_DefaultCaption');
delete_option('SME_SmugMugEmbed_options_DefaultImageName');
delete_site_option('SME_SmugMugEmbed_options_DefaultImageName');
delete_option('SME_SmugMugEmbed_options_DefaultOpenNewWindow');
delete_site_option('SME_SmugMugEmbed_options_DefaultOpenNewWindow');
delete_option('SME_SmugMugEmbed_options_Galleries
');
delete_site_option('SME_SmugMugEmbed_options_Galleries
');
delete_option('SME_License');
delete_site_option('SME_License');

// Delete Transients
delete_transient('sme_license_reminder');
delete_site_transient('sme_license_reminder');
delete_transient('sme_license_expiration');
delete_site_transient('sme_license_expiration');

