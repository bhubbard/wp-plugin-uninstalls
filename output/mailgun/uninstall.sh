#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailgun'
wp option delete 'reply_to'
wp option delete 'email_fallback'

