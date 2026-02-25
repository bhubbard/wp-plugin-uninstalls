<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abp_autor');
delete_site_option('abp_autor');
delete_option('abp_buscar');
delete_site_option('abp_buscar');
delete_option('abp_pagina');
delete_site_option('abp_pagina');

