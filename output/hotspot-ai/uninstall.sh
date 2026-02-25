#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auth_signin_token'
wp option delete 'chatgptModel'
wp option delete 'hotspot-switch'
wp option delete 'ai_select'
wp option delete 'custom_proxy'
wp option delete 'openai_key'
wp option delete 'roleInstruction'
wp option delete 'seo-analysis'
wp option delete 'search-images'
wp option delete 'hotspot_ai_do_activation_redirect'
wp option delete 'classic-editor-replace'
wp option delete 'baijiahao_hotspot_cookies'
wp option delete 'classic_editor_support_switch'

# Delete Transients
wp transient delete 'hotspot_last_checked_time'

