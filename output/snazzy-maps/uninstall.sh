#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'MySnazzyAPIKey'
wp option delete 'HideWelcomeMessage'
wp option delete 'SnazzyMapStyles'
wp option delete 'SnazzyMapDefaultStyle'

