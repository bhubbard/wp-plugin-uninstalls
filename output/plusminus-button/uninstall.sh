#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iv_spinner_margin_top'
wp option delete 'iv_spinner_margin_left'
wp option delete 'iv_spinner_margin_bottom'
wp option delete 'iv_spinner_margin_right'
wp option delete 'iv_spinner_font'
wp option delete 'iv_spinner_font_size'
wp option delete 'iv_spinner_color'
wp option delete 'iv_spinner_background'

