#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fa_emoticons_enable'
wp option delete 'fa_emoticons_style'
wp option delete 'fa_emoticons_kit_url'

