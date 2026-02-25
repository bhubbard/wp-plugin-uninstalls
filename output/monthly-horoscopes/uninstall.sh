#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'horoscopes_options'
wp option delete 'generatedapikey'
wp option delete 'initialnumbermonths'

