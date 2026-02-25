#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'private_tags_mode'
wp option delete 'private_tags'
wp option delete 'public_tags'

