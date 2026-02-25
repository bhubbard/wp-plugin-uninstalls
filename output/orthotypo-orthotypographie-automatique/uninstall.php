<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rules-punctuation');
delete_site_option('rules-punctuation');
delete_option('rules-quotation_marks');
delete_site_option('rules-quotation_marks');
delete_option('rules-percentage');
delete_site_option('rules-percentage');
delete_option('rules-pleasantries_m');
delete_site_option('rules-pleasantries_m');
delete_option('rules-pleasantries_mme');
delete_site_option('rules-pleasantries_mme');
delete_option('rules-pleasantries_mlle');
delete_site_option('rules-pleasantries_mlle');
delete_option('rules-pleasantries_dr');
delete_site_option('rules-pleasantries_dr');
delete_option('rules-pleasantries_pr');
delete_site_option('rules-pleasantries_pr');
delete_option('rules-number_er');
delete_site_option('rules-number_er');
delete_option('rules-number_nd');
delete_site_option('rules-number_nd');
delete_option('rules-number_e');
delete_site_option('rules-number_e');
delete_option('global-filters');
delete_site_option('global-filters');
delete_option('debug_options-replace_space_by_underscore');
delete_site_option('debug_options-replace_space_by_underscore');
delete_option('debug_options-use_red_color');
delete_site_option('debug_options-use_red_color');

