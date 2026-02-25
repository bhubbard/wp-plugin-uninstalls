#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emojfopo_enabled_emojis'
wp option delete 'emojfopo_position'
wp option delete 'emojfopo_post_types'
wp option delete 'emojfopo_custom_names'
wp option delete 'emojfopo_title_text'

