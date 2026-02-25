<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('meu_plugin_relatorios_email');
delete_site_option('meu_plugin_relatorios_email');
delete_option('meu_plugin_relatorios_email_opcional');
delete_site_option('meu_plugin_relatorios_email_opcional');
delete_option('meu_plugin_relatorios_dia');
delete_site_option('meu_plugin_relatorios_dia');
delete_option('meu_plugin_relatorios_mensagem');
delete_site_option('meu_plugin_relatorios_mensagem');
delete_option('meu_plugin_relatorios_plugins_atualizados');
delete_site_option('meu_plugin_relatorios_plugins_atualizados');
delete_option('meu_plugin_relatorios_wp_atualizacoes');
delete_site_option('meu_plugin_relatorios_wp_atualizacoes');

// Clear Cron Jobs
wp_clear_scheduled_hook('meu_plugin_relatorios_gancho');

