<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zupportdesk_email');
delete_site_option('zupportdesk_email');
delete_option('zupportdesk_password');
delete_site_option('zupportdesk_password');
delete_option('zupportdesk_userId');
delete_site_option('zupportdesk_userId');
delete_option('zupportdesk_companyList');
delete_site_option('zupportdesk_companyList');
delete_option('zupportdesk_selectedCompanyId');
delete_site_option('zupportdesk_selectedCompanyId');
delete_option('zupportdesk_authorizeToken');
delete_site_option('zupportdesk_authorizeToken');
delete_option('zupportdesk_widgetId');
delete_site_option('zupportdesk_widgetId');

