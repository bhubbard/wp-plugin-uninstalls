#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'llmscbt_tracking_enabled'
wp option delete 'llmscbt_domain'
wp option delete 'llmscbt_llms_txt_enabled'
wp option delete 'llmscbt_llms_txt_content'
wp option delete 'llmscbt_consent_given'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'llmscbt_%'"

