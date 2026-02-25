<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clm_remNFAuthor');
delete_site_option('clm_remNFAuthor');
delete_option('clm_addNWAuthor');
delete_site_option('clm_addNWAuthor');
delete_option('clm_remNFComment');
delete_site_option('clm_remNFComment');
delete_option('clm_addNWComment');
delete_site_option('clm_addNWComment');
delete_option('clm_safeNumber');
delete_site_option('clm_safeNumber');

