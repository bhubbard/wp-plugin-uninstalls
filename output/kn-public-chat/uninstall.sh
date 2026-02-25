#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cboxheight'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cboxwidth'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cboxid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_securitytag'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_privatekey'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_premium'"
wp option delete 'kn_malay_chat_version'
wp option delete 'kn_malay_chat_cboxheight'
wp option delete 'kn_malay_chat_cboxwidth'
wp option delete 'kn_malay_chat_cboxid'
wp option delete 'kn_malay_chat_securitytag'
wp option delete 'kn_malay_chat_privatekey'
wp option delete 'kn_malay_chat_premium'

