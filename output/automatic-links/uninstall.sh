#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autolink_nofollow'
wp option delete 'autolink_enable_target'
wp option delete 'autolink_target'

