#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gothamadblock_option_premium_tools'
wp option delete 'gothamadblock_option_fury'
wp option delete 'gothamadblock_option_messageperso_title'
wp option delete 'gothamadblock_option_messageperso'
wp option delete 'gothamadblock_option_messageperso_button'
wp option delete 'gothamadblock_option_cookietime'
wp option delete 'gothamadblock_option_powered'
wp option delete 'gothamadblock_option_apijeton'

