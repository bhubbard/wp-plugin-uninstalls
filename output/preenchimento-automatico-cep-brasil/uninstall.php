<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pacwp_active');
delete_site_option('pacwp_active');
delete_option('pacepbr_class_cep');
delete_site_option('pacepbr_class_cep');
delete_option('pacepbr_class_logradouro');
delete_site_option('pacepbr_class_logradouro');
delete_option('pacepbr_class_numero');
delete_site_option('pacepbr_class_numero');
delete_option('pacepbr_class_complemento');
delete_site_option('pacepbr_class_complemento');
delete_option('pacepbr_class_bairro');
delete_site_option('pacepbr_class_bairro');
delete_option('pacepbr_class_cidade');
delete_site_option('pacepbr_class_cidade');
delete_option('pacepbr_class_estado');
delete_site_option('pacepbr_class_estado');

