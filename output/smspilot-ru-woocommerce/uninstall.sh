#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smspilot_apikey'
wp option delete 'smspilot_sender'
wp option delete 'smspilot_vendor_phone'
wp option delete 'smspilot_vendor_status1'
wp option delete 'smspilot_vendor_msg1'
wp option delete 'smspilot_vendor_voice1'
wp option delete 'smspilot_vendor_status2'
wp option delete 'smspilot_vendor_msg2'
wp option delete 'smspilot_shopper_status1'
wp option delete 'smspilot_shopper_msg1'
wp option delete 'smspilot_shopper_status2'
wp option delete 'smspilot_shopper_msg2'
wp option delete 'smspilot_last_error'
wp option delete 'smspilot_shopper_status3'
wp option delete 'smspilot_shopper_msg3'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'smspilot_%'"

