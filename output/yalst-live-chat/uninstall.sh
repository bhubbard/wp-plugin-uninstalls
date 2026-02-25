#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tabIndex'
wp option delete 'yalstReiterIntegrationInput'
wp option delete 'yalstReiterWidgetIntegrationInput'
wp option delete 'yalstTabChatIntegrationInput'
wp option delete 'isAddedReiter'
wp option delete 'isAddedReiterWidget'
wp option delete 'isAddedTab'

