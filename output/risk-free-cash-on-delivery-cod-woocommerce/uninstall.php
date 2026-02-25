<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sb_cod_advance_general_sett_customize');
delete_site_option('sb_cod_advance_general_sett_customize');
delete_option('sb_cod_advance_general_sett');
delete_site_option('sb_cod_advance_general_sett');

