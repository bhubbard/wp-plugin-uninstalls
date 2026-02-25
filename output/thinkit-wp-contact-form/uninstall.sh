#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thinkit_contact_form_version'
wp option delete 'thinkit_recptacha_key'
wp option delete 'lwcf_form_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lwcf_form_name_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lwcf_form_email_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lwcf_form_subject_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lwcf_variable_count_%'"

