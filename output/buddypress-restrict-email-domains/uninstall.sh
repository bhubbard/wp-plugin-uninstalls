#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'limited_email_domains'
wp option delete 'banned_email_domains'

