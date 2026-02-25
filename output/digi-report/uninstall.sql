-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('meu_plugin_relatorios_email', 'meu_plugin_relatorios_email_opcional', 'meu_plugin_relatorios_dia', 'meu_plugin_relatorios_mensagem', 'meu_plugin_relatorios_plugins_atualizados', 'meu_plugin_relatorios_wp_atualizacoes');

