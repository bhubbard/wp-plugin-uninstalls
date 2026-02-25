#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mail_sender_modifier_id'
wp option delete 'mail_sender_modifier_email_id'

