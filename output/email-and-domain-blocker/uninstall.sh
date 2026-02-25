#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blocked_domains'
wp option delete 'blocked_emails'
wp option delete 'edb_enable_logging'

