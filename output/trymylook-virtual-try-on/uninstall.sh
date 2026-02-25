#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trymylook_api_key'
wp option delete 'trymylook_button_text'
wp option delete 'trymylook_generate_button_text'
wp option delete 'trymylook_enable_download'

