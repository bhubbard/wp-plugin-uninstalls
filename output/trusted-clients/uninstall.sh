#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trusted_clients_total_fotos'
wp option delete 'trusted_clients_mostrar_estrellas'
wp option delete 'trusted_clients_aleatorio'
wp option delete 'trusted_clients_texto'
wp option delete 'trusted_clients_fotos_mostrar'
wp option delete 'trusted_clients_feedback'

