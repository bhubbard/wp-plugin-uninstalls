<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('charts_key');
delete_site_option('charts_key');
delete_option('rev_per_page');
delete_site_option('rev_per_page');
delete_option('rec_amt');
delete_site_option('rec_amt');
delete_option('thanks_on');
delete_site_option('thanks_on');
delete_option('gravataroff');
delete_site_option('gravataroff');
delete_option('rev_url');
delete_site_option('rev_url');
delete_option('answers_off');
delete_site_option('answers_off');
delete_option('bootstrap_on');
delete_site_option('bootstrap_on');
delete_option('dark_on');
delete_site_option('dark_on');
delete_option('cbsnippet_propname');
delete_site_option('cbsnippet_propname');
delete_option('cbsnippet_description');
delete_site_option('cbsnippet_description');
delete_option('cbsnippet_country');
delete_site_option('cbsnippet_country');
delete_option('cbsnippet_city');
delete_site_option('cbsnippet_city');
delete_option('cbsnippet_street');
delete_site_option('cbsnippet_street');
delete_option('cbsnippet_postal');
delete_site_option('cbsnippet_postal');
delete_option('cbsnippet_phone');
delete_site_option('cbsnippet_phone');
delete_option('cbsnippet_price');
delete_site_option('cbsnippet_price');
delete_option('cbsnippet_logo');
delete_site_option('cbsnippet_logo');

