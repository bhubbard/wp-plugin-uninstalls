#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'findwise_redirect_to_finish_setup'
wp option delete 'findwise_pairing_token'
wp option delete 'findwise_pairing_callback_token'
wp option delete 'findwise_secret_key'

