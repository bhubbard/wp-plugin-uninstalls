#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'note_name_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'note_datepicker_%'"
wp option delete 'note_email'

