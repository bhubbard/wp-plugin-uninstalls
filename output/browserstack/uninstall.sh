#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'browserstack_screenshot_testing'
wp option delete 'preview_key_field'
wp option delete 'draft_public_preview_field'

