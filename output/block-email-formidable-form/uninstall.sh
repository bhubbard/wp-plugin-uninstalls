#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'formadiable_form_email_fields'
wp option delete 'formadiable_list_of_block_domains'
wp option delete 'formadiable_display_error_message'

