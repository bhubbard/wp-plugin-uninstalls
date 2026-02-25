#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'v7_legacy_editor_redirect'
wp option delete 'v7_legacy_editor_posts'
wp option delete 'v7_legacy_editor_pages'

