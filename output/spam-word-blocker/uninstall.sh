#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spamwobl_blocked_words'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_spamwobl_blocked_%' OR option_name LIKE '_site_transient_spamwobl_blocked_%'"

