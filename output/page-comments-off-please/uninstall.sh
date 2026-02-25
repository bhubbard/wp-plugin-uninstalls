#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disable_page_comments'
wp option delete 'disable_post_comments'
wp option delete 'legacy_mode'

