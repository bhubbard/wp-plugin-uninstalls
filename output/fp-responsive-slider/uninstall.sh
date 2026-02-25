#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '$maxWidth_op'
wp option delete '$speed_op'
wp option delete '$img_width_op'
wp option delete '$img_height_op'
wp option delete '$slide_timeout_op'
wp option delete '$fp_pager_op'
wp option delete '$slide_limit_op'
wp option delete '$control_arrow_op'
wp option delete '$hover_control_op'
wp option delete '$auto_play_op'
wp option delete '$random_play_op'

