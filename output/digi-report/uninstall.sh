#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'meu_plugin_relatorios_email'
wp option delete 'meu_plugin_relatorios_email_opcional'
wp option delete 'meu_plugin_relatorios_dia'
wp option delete 'meu_plugin_relatorios_mensagem'
wp option delete 'meu_plugin_relatorios_plugins_atualizados'
wp option delete 'meu_plugin_relatorios_wp_atualizacoes'

# Clear Cron Jobs
wp cron event delete 'meu_plugin_relatorios_gancho'

