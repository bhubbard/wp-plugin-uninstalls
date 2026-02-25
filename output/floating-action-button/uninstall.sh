#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fz_fab_activate'
wp option delete 'fz_fab_type'
wp option delete 'fz_fab_position'
wp option delete 'fz_fab_main_img_id'
wp option delete 'fz_fab_main_color'
wp option delete 'fz_fab_main_bg_color'
wp option delete 'fz_fab_sub_btns'

