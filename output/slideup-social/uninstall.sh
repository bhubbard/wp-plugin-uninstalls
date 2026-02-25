#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fb_username'
wp option delete 'tw_username'
wp option delete 'ins_username'
wp option delete 'fb_url'
wp option delete 'tw_url'
wp option delete 'ins_url'

