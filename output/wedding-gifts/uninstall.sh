#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gift_email_subject'
wp option delete 'gift_email_bcc'
wp option delete 'gift_bank_account'

