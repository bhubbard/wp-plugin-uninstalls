#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'form_email_fields'
wp option delete 'display_error_message'
wp option delete 'list_of_block_domains'

