#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'epicwin_email_from'
wp option delete 'epicwin_email_subject'
wp option delete 'epicwin_email_message'

