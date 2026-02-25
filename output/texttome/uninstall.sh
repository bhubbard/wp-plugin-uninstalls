#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'texttome_settings'
wp option delete 'texttomeSelect'
wp option delete 'texttome-phonenumber'
wp option delete 'texttome-message'

