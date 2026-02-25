#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 're_sitekey'
wp option delete 're_secret'
wp option delete 're_response'

