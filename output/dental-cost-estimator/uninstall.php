<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dentcoes_enabled_treatment');
delete_site_option('dentcoes_enabled_treatment');
delete_option('dentcoes_selected_currency');
delete_site_option('dentcoes_selected_currency');
delete_option('dce_enabled_treatment');
delete_site_option('dce_enabled_treatment');
delete_option('dce_selected_currency');
delete_site_option('dce_selected_currency');

