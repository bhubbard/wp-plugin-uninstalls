#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'translatecart_hide_selector_single'
wp option delete 'translatecart_setup_complete'
wp option delete 'translatecart_show_wizard'
wp option delete 'translatecart_custom_fields'
wp option delete 'translatecart_validation_messages'
wp option delete 'translatecart_version'
wp option delete 'translatecart_pro_url'

