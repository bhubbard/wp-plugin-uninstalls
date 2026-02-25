#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mb_CultureId_code'
wp option delete 'mb_LocationCultureId_code'
wp option delete 'mb_lid_code'
wp option delete 'mb_moaref'
wp option delete 'mb_vije'
wp option delete 'mb_top-text'
wp option delete 'mb_font-top-text'
wp option delete 'mb_color-top-text'
wp option delete 'mb_bot-text'
wp option delete 'mb_font-bot-text'
wp option delete 'mb_help_link'
wp option delete 'mb_help_link_color'
wp option delete 'mb_load_bootstrap'
wp option delete 'mb_other_site'
wp option delete 'mb_font-tab-text'

