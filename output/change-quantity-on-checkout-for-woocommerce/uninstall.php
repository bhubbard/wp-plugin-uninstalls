<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cqoc_enableBlock');
delete_site_option('cqoc_enableBlock');
delete_option('cqoc_addDeleteIconBlock');
delete_site_option('cqoc_addDeleteIconBlock');
delete_option('cqoc_addQuantityField');
delete_site_option('cqoc_addQuantityField');
delete_option('cqoc_hideDeleteIcon');
delete_site_option('cqoc_hideDeleteIcon');
delete_option('cqoc_classic_field_position');
delete_site_option('cqoc_classic_field_position');
delete_option('cqoc_classic_button_style');
delete_site_option('cqoc_classic_button_style');
delete_option('cqoc_classic_custom_css');
delete_site_option('cqoc_classic_custom_css');
delete_option('cqoc_block_integration_method');
delete_site_option('cqoc_block_integration_method');
delete_option('cqoc_block_custom_attributes');
delete_site_option('cqoc_block_custom_attributes');
delete_option('cqoc_block_enable_ajax');
delete_site_option('cqoc_block_enable_ajax');
delete_option('cqoc_selectProductCategory');
delete_site_option('cqoc_selectProductCategory');

