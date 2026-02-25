#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'leadcrafter_api_secret'
wp option delete 'leadcrafter_form_id'
wp option delete 'leadcrafter_fallback_email'

