#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'donationcontest_exists'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'donationcontest_%'"

