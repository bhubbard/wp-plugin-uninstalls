#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '3ov_ai_enabled'
wp option delete '3ov_mp_networkWorker'
wp option delete '3ov_ai_openApiKey'
wp option delete '3ov_ai_allow'
wp option delete '3ov_defaultVRM'
wp option delete '3ov_defaultAvatar'
wp option delete '3ov_plugin_version'

