#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chpdate_enable_settings'
wp option delete 'chpdate_comment_settings'
wp option delete 'chpdate_format_settings'

