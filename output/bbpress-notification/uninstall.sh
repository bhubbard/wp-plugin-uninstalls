#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbpdisablebbpnotificationallfeature'
wp option delete 'newtopicemail'
wp option delete 'newreplyemail'
wp option delete 'bbpress_notify_newreply_email_subject'
wp option delete 'bbpress_notify_newreply_email_body'

