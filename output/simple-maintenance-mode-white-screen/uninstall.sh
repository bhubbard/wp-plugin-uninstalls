#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smmws_enabled'
wp option delete 'smmws_text'
wp option delete 'smmws_font_size'
wp option delete 'smmws_bg_color'
wp option delete 'smmws_text_color'
wp option delete 'smmws_font_family'
wp option delete 'smmws_logo'

# Delete Transients
wp transient delete 'smmws_settings_saved'

