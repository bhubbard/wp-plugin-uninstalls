#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ialoc_locale'
wp option delete 'ialoc_embed_mode'
wp option delete 'ialoc_id'
wp option delete 'ialoc_extra_config'
wp option delete 'ialoc_callback_type'
wp option delete 'ialoc_thank_you_url'
wp option delete 'ialoc_custom_js'

