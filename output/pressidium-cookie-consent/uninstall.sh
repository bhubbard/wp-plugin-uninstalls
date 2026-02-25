#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pressidium_cookie_consent_activated'
wp option delete 'pressidium_cookie_consent_settings'
wp option delete 'pressidium_cookie_consent_table_versions'
wp option delete 'pressidium_cookie_consent_ai_api_key'

