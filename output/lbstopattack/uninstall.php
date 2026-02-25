<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lbsa_onlyfront');
delete_site_option('lbsa_onlyfront');
delete_option('lbsa_namespaces');
delete_site_option('lbsa_namespaces');
delete_option('lbsa_levelLFI');
delete_site_option('lbsa_levelLFI');
delete_option('lbsa_sendnotification');
delete_site_option('lbsa_sendnotification');
delete_option('lbsa_sendto');
delete_site_option('lbsa_sendto');
delete_option('lbsa_raiseerror');
delete_site_option('lbsa_raiseerror');
delete_option('lbsa_redirurl');
delete_site_option('lbsa_redirurl');
delete_option('lbsa_errorcode');
delete_site_option('lbsa_errorcode');
delete_option('lbsa_errormsg');
delete_site_option('lbsa_errormsg');
delete_option('lbsa_ipblock');
delete_site_option('lbsa_ipblock');
delete_option('lbsa_ipblocktime');
delete_site_option('lbsa_ipblocktime');
delete_option('lbsa_ipblockcount');
delete_site_option('lbsa_ipblockcount');
delete_option('lbsa_checkwp');
delete_site_option('lbsa_checkwp');
delete_option('lbsa_unactive');
delete_site_option('lbsa_unactive');
delete_option('lbsa_db_version');
delete_site_option('lbsa_db_version');

