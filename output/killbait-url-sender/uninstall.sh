#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'killbait_apikey'
wp option delete 'killbait_language'
wp option delete 'killbait_categories'

