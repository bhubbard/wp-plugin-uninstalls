<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scap_captchaBg');
delete_site_option('scap_captchaBg');
delete_option('scap_captchaBgColor');
delete_site_option('scap_captchaBgColor');
delete_option('scap_dontUseImageBg');
delete_site_option('scap_dontUseImageBg');
delete_option('scap_captchaStartText');
delete_site_option('scap_captchaStartText');
delete_option('captchaEndText');
delete_site_option('captchaEndText');
delete_option('scap_captchaEndText');
delete_site_option('scap_captchaEndText');

