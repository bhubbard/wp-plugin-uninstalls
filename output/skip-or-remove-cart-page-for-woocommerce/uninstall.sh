#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sorcart_enable'
wp option delete 'multipurchase_enable'
wp option delete 'addtocart_button_text'

