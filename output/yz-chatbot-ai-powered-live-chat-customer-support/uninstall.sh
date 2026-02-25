#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yz_chatbot_settings'
wp option delete 'yz_chatbot_version'
wp option delete 'yz_chatbot_activation_redirect'

# Delete Transients
wp transient delete 'yz_chatbot_tenant_verified'

