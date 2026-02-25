#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'options_freshjet__api_key'
wp option delete 'options_freshjet__secret_key'
wp option delete 'options_freshjet__sender_name'
wp option delete 'options_freshjet__sender_email'

