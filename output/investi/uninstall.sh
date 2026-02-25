#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'investi-apikey'
wp option delete 'investi-apikey-saved'
wp option delete 'investi-do-not-add-css'

