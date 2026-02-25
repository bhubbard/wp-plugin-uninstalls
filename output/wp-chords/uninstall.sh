#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpchords_toggle_fontsize'
wp option delete 'wpchords_toggle_transpose'
wp option delete 'wpchords_toggle_alternating'
wp option delete 'wpchords_toggle_print'
wp option delete 'wpchords_string_printfooter'
wp option delete 'wpchords_string_deamp'
wp option delete 'wpchords_toggle_monospace'

