#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_acceptcoin_settings'
wp option delete 'smtp_host'
wp option delete 'smtp_port'
wp option delete 'smtp_username'
wp option delete 'smtp_password'
wp option delete 'smtp_encryption'

