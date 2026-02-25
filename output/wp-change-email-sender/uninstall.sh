#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpces_email_sender_name'
wp option delete 'wpces_sender_email_address'

