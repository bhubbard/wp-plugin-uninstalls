#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pb_activated_time'
wp option delete 'bit14_rtl_language'
wp option delete 'bit14_enable_fontawesone'
wp option delete 'bit14_enable_googlefonts'
wp option delete 'wpb_js_google_fonts_subsets'

