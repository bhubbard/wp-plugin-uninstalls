#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'language_redirect_default_redirect_location'
wp option delete 'language_redirect_redirect_mapping'

