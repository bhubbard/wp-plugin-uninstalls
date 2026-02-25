#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shift8_push_application_user'
wp option delete 'shift8_push_application_password'
wp option delete 'shift8_push_dst_url'
wp option delete 'shift8_push_src_url'
wp option delete 'shift8_push_enabled'

