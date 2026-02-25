#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tka_lsc_title'
wp option delete 'tka_lsc_format'
wp option delete 'tka_lsc_fuseau'
wp option delete 'tka_lsc_hidesecond'
wp option delete 'tka_lsc_font'
wp option delete 'tka_lsc_font_size'
wp option delete 'tka_lsc_font_color'
wp option delete 'tka_lsc_font_weight'

