<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iammobiled_ad_option');
delete_site_option('iammobiled_ad_option');
delete_option('iammobiled_ad_share');
delete_site_option('iammobiled_ad_share');
delete_option('iammobiled_user_admob_id');
delete_site_option('iammobiled_user_admob_id');
delete_option('iammobiled_admob_id');
delete_site_option('iammobiled_admob_id');
delete_option('iammobiled_mobile_template');
delete_site_option('iammobiled_mobile_template');
delete_option('cfmobi_mobile_browsers');
delete_site_option('cfmobi_mobile_browsers');
delete_option('cfmobi_touch_browsers');
delete_site_option('cfmobi_touch_browsers');
delete_option('iammobiled_mobile_theme');
delete_site_option('iammobiled_mobile_theme');
delete_option('current_theme');
delete_site_option('current_theme');

