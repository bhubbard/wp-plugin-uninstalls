#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbst_tvs_box_end_date'
wp option delete 'wbst_tvs_box_position'
wp option delete 'wbst_tvs_box_bg_color'
wp option delete 'wbst_tvs_box_color'
wp option delete 'wbst_tvs_box_text'
wp option delete 'wbst_tvs_box_hide'
wp option delete 'wbst_tvs_box_once_time'
wp option delete 'wbst_tvs_box_message'

