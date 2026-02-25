#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ContactCommentersInitialized'
wp option delete 'mail-sender'
wp option delete 'mail-sender-email'
wp option delete 'mail-subject'
wp option delete 'mail-ind'
wp option delete 'mail-content'

