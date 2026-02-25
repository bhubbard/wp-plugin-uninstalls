<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enable_scanc_aggressive');
delete_site_option('enable_scanc_aggressive');
delete_option('scanc_speed');
delete_site_option('scanc_speed');
delete_option('scanc_offset');
delete_site_option('scanc_offset');
delete_option('scanc_easing');
delete_site_option('scanc_easing');
delete_option('scanc_exclude_begin_1');
delete_site_option('scanc_exclude_begin_1');
delete_option('scanc_exclude_begin_2');
delete_site_option('scanc_exclude_begin_2');
delete_option('scanc_exclude_begin_3');
delete_site_option('scanc_exclude_begin_3');
delete_option('scanc_exclude_begin_4');
delete_site_option('scanc_exclude_begin_4');
delete_option('scanc_exclude_begin_5');
delete_site_option('scanc_exclude_begin_5');
delete_option('scanc_exclude_match_1');
delete_site_option('scanc_exclude_match_1');
delete_option('scanc_exclude_match_2');
delete_site_option('scanc_exclude_match_2');
delete_option('scanc_exclude_match_3');
delete_site_option('scanc_exclude_match_3');
delete_option('scanc_exclude_match_4');
delete_site_option('scanc_exclude_match_4');
delete_option('scanc_exclude_match_5');
delete_site_option('scanc_exclude_match_5');
delete_option('essl_speed');
delete_site_option('essl_speed');
delete_option('essl_offset');
delete_site_option('essl_offset');
delete_option('essl_easing');
delete_site_option('essl_easing');
delete_option('essl_exclude_begin_1');
delete_site_option('essl_exclude_begin_1');
delete_option('essl_exclude_begin_2');
delete_site_option('essl_exclude_begin_2');
delete_option('essl_exclude_begin_3');
delete_site_option('essl_exclude_begin_3');
delete_option('essl_exclude_begin_4');
delete_site_option('essl_exclude_begin_4');
delete_option('essl_exclude_begin_5');
delete_site_option('essl_exclude_begin_5');
delete_option('essl_exclude_match_1');
delete_site_option('essl_exclude_match_1');
delete_option('essl_exclude_match_2');
delete_site_option('essl_exclude_match_2');
delete_option('essl_exclude_match_3');
delete_site_option('essl_exclude_match_3');
delete_option('essl_exclude_match_4');
delete_site_option('essl_exclude_match_4');
delete_option('essl_exclude_match_5');
delete_site_option('essl_exclude_match_5');
delete_option('enable_essl_aggressive');
delete_site_option('enable_essl_aggressive');

