#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'microid_include_posts'
wp option delete 'microid_include_comments'
wp option delete 'microid_identities'

