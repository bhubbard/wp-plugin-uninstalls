#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vsrc_title'
wp option delete 'vsrc_select_num_user'
wp option delete 'vsrc_dis_num_user'
wp option delete 'vsrc_dis_num_height'
wp option delete 'vsrc_dis_image_or_name'
wp option delete 'vsrc_select_character'
wp option delete 'vsrc_speed'
wp option delete 'vsrc_waitseconds'

