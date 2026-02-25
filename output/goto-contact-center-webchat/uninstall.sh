#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_snippet'"
wp option delete 'goto-contact-center-webchat_activated'
wp option delete 'goto-contact-center-webchat_snippet'

