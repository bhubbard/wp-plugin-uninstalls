#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ppct_register_site'
wp option delete 'ppct_chat_active'
wp option delete 'ppct_reg_email'
wp option delete 'ppct_private_key'

