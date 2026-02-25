<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('threemasmart_position');
delete_site_option('threemasmart_position');
delete_option('threemasmart_id');
delete_site_option('threemasmart_id');
delete_option('threemasmart_floation_posi_rechts_nach_links');
delete_site_option('threemasmart_floation_posi_rechts_nach_links');
delete_option('threemasmart_floating_posi_unten_nach_oben');
delete_site_option('threemasmart_floating_posi_unten_nach_oben');
delete_option('threemasmart_floatingbutton_status');
delete_site_option('threemasmart_floatingbutton_status');

