#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lnd-hide-config'
wp option delete 'lnd-on-chain-address'
wp option delete 'lnd-hostname'
wp option delete 'lnd-conn-timeout'
wp option delete 'lnd-force-ssl'
wp option delete 'lnd-macaroon-name'
wp option delete 'lnd-macaroon'
wp option delete 'lnd-tls-cert-name'
wp option delete 'lnd-ssl-warn'

