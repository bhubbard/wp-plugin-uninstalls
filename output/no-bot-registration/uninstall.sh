#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ajdg_nobot_protect'
wp option delete 'ajdg_nobot_questions'
wp option delete 'ajdg_nobot_answers'
wp option delete 'disallowed_keys'
wp option delete 'ajdg_nobot_blacklist_usernames'
wp option delete 'ajdg_nobot_blacklist_protect'
wp option delete 'ajdg_nobot_blacklist_message'
wp option delete 'ajdg_nobot_security_message'
wp option delete 'ajdg_nobot_hide_review'
wp option delete 'ajdg_activate_no-bot-registration'

# Delete Transients
wp transient delete 'ajdg_update_no-bot-registration'

