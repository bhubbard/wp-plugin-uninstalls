<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kps_icon');
delete_site_option('kps_icon');
delete_option('kps_output');
delete_site_option('kps_output');
delete_option('kps_translations');
delete_site_option('kps_translations');
delete_option('kps_adminUnlockMailSettings');
delete_site_option('kps_adminUnlockMailSettings');
delete_option('kps_MailFrom');
delete_site_option('kps_MailFrom');
delete_option('kps_userMailSettings');
delete_site_option('kps_userMailSettings');
delete_option('kps_userMailContactSettings');
delete_site_option('kps_userMailContactSettings');
delete_option('kps_authorMailSettings');
delete_site_option('kps_authorMailSettings');
delete_option('kps_userSettings');
delete_site_option('kps_userSettings');
delete_option('kps_backendPagination');
delete_site_option('kps_backendPagination');
delete_option('kps_deleteNoEntryTime');
delete_site_option('kps_deleteNoEntryTime');
delete_option('kps_deleteEntryTime');
delete_site_option('kps_deleteEntryTime');
delete_option('kps_version');
delete_site_option('kps_version');
delete_option('kps_formOptions');
delete_site_option('kps_formOptions');
delete_option('kps_formWordCount');
delete_site_option('kps_formWordCount');
delete_option('kps_captchakeys');
delete_site_option('kps_captchakeys');
delete_option('kps_captcha');
delete_site_option('kps_captcha');
delete_option('kps_frontendPagination');
delete_site_option('kps_frontendPagination');
delete_option('kps_mailFrom');
delete_site_option('kps_mailFrom');
delete_option('kps_mailFromCC');
delete_site_option('kps_mailFromCC');
delete_option('kps_agb');
delete_site_option('kps_agb');
delete_option('kps_dsgvo');
delete_site_option('kps_dsgvo');
delete_option('kps_report');
delete_site_option('kps_report');
delete_option('kps_kpsCounter');
delete_site_option('kps_kpsCounter');
delete_option('kps_widget');
delete_site_option('kps_widget');
delete_option('kps_legend');
delete_site_option('kps_legend');
delete_option('kps_userMailContent');
delete_site_option('kps_userMailContent');
delete_option('kps_authorMailContent');
delete_site_option('kps_authorMailContent');
delete_option('kps_adminUnlockMailContent');
delete_site_option('kps_adminUnlockMailContent');

