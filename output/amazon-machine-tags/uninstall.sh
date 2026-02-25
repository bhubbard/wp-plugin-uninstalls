#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aws_access_key_id'
wp option delete 'aws_access_key_secret'
wp option delete 'amtap_headline'
wp option delete 'amtap_target'
wp option delete 'amtap_rating'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'amtap_associate_id_%'"
wp option delete 'amtap_associate_default'
wp option delete 'amtap_ip2country'
wp option delete 'amtap_default_tags'
wp option delete 'amtap_xml_maxage'
wp option delete 'amtap_item_response_group'
wp option delete 'amtap_donation'
wp option delete 'amtap_debug'
wp option delete 'amtap_key_status'

