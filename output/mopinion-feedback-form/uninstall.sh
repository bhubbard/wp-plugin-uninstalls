#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_position'"
wp option delete 'mopinion_feedback_form_mopinionkey'
wp option delete 'mopinion_feedback_form_position'

