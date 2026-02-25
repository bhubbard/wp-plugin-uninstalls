#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kill_adBlock_status'
wp option delete 'kill_adBlock_random_class_name'
wp option delete 'kill_adBlock_message'
wp option delete 'kill_adBlock_message_delay'
wp option delete 'kill_adBlock_close_btn'
wp option delete 'kill_adBlock_close_automatically'
wp option delete 'kill_adBlock_close_automatically_delay'
wp option delete 'kill_adBlock_message_type'

