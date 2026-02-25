#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adminhash'
wp option delete 'new_admin_email'
wp option delete 'multiple_admin_emails'

