#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'private_buddypress'
wp option delete 'private_buddypress_version'
wp option delete 'blogtitle'

