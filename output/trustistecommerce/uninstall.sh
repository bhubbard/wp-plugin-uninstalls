#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trustist_payments_sandbox_public_key'
wp option delete 'trustist_payments_sandbox_private_key'
wp option delete 'trustist_payments_public_key'
wp option delete 'trustist_payments_private_key'
wp option delete 'trustist_payments_sandbox_cards_enabled'
wp option delete 'trustist_payments_cards_enabled'

