<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apexAgentApiKey');
delete_site_option('apexAgentApiKey');
delete_option('ApexIdxDomainUrl');
delete_site_option('ApexIdxDomainUrl');
delete_option('ApexIdxBrokerGalUname');
delete_site_option('ApexIdxBrokerGalUname');
delete_option('ApexIdxIsBroker');
delete_site_option('ApexIdxIsBroker');

