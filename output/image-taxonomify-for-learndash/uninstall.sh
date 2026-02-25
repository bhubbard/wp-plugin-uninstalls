#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trit_which_taxonomy'
wp option delete 'trit_position'
wp option delete 'trit_custom_text'
wp option delete 'trit_color'
wp option delete 'trit_background_color'
wp option delete 'trit_font_size'
wp option delete 'trit_uppercase'
wp option delete 'trit_who_can_see'

