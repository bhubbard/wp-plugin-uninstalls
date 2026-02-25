#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc-pedido-minimo-onoff'
wp option delete 'wc-pedido-minimo-usuarios'
wp option delete 'wc-pedido-minimo-funcionamento'
wp option delete 'wc-pedido-minimo-valor'
wp option delete 'wc-pedido-minimo-quantidade'
wp option delete 'wc-pedido-minimo-pagamentos'

