#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trml_default_language'
wp option delete 'trml_api_key'
wp option delete 'trml_languages'

