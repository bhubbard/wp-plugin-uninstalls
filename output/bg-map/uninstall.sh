#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'link_%'"
wp option delete 'link_1'
wp option delete 'link_2'
wp option delete 'link_3'
wp option delete 'link_4'
wp option delete 'link_5'
wp option delete 'link_6'
wp option delete 'link_7'
wp option delete 'link_8'
wp option delete 'link_9'
wp option delete 'link_10'
wp option delete 'link_11'
wp option delete 'link_12'
wp option delete 'link_13'
wp option delete 'link_14'
wp option delete 'link_15'
wp option delete 'link_16'
wp option delete 'link_17'
wp option delete 'link_18'
wp option delete 'link_19'
wp option delete 'link_20'
wp option delete 'link_21'
wp option delete 'link_23'
wp option delete 'link_22'
wp option delete 'link_24'
wp option delete 'link_25'
wp option delete 'link_26'
wp option delete 'link_27'
wp option delete 'link_28'

