#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pingler_apikey'
wp option delete 'pingler_category'
wp option delete 'pingler_message'

