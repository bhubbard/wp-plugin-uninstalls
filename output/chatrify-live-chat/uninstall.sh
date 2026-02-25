#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chatrify_uid'
wp option delete 'chatrify_groups'
wp option delete 'login'

