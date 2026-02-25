#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'project_key'
wp option delete 'localizejs_settings_url_options'
wp option delete 'localizejs_settings_allow_inline_break_tags'
wp option delete 'localizejs_settings_auto_approve'
wp option delete 'localizejs_settings_retranslate_on_new_phrases'

