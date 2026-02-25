#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'public_post_preview_expiration_time'
wp option delete 'public_post_preview'

