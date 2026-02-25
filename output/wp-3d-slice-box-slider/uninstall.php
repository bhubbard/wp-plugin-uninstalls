<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('orientation');
delete_site_option('orientation');
delete_option('some_other_option');
delete_site_option('some_other_option');
delete_option('option_etc');
delete_site_option('option_etc');
delete_option('perspective');
delete_site_option('perspective');
delete_option('cuboidsCount');
delete_site_option('cuboidsCount');
delete_option('cuboidsRandom');
delete_site_option('cuboidsRandom');
delete_option('maxCuboidsCount');
delete_site_option('maxCuboidsCount');
delete_option('speed');
delete_site_option('speed');
delete_option('easing');
delete_site_option('easing');
delete_option('autoplay');
delete_site_option('autoplay');
delete_option('interval');
delete_site_option('interval');
delete_option('fwds_effect');
delete_site_option('fwds_effect');
delete_option('fwds_interval');
delete_site_option('fwds_interval');
delete_option('fwds_autoplay');
delete_site_option('fwds_autoplay');
delete_option('fwds_playBtn');
delete_site_option('fwds_playBtn');
delete_option('fwds_playbtn');
delete_site_option('fwds_playbtn');

