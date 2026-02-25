#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_cw_api_token'
wp option delete 'post_cw_roomid'
wp option delete 'post_send_cwr_expert'
wp option delete 'post_send_cwr_messege'

