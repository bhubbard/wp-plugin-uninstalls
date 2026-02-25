#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbrdify_adminbar_logo'
wp option delete 'dbrdify_installBanner'
wp option delete 'dbrdify_installDate'
wp option delete 'dbrdify_usedNotice'
wp option delete 'dbrdify_prioritise'

