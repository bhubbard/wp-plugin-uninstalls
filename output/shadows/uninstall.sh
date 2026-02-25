#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'curl_shadow_height'
wp option delete 'curl_shadow_opacity'
wp option delete 'flat_shadow_height'
wp option delete 'flat_shadow_opacity'

