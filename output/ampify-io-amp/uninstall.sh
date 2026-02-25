#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ampify_is_active'
wp option delete 'ampify_project_id'
wp option delete 'ampify_include_urls'
wp option delete 'ampify_exclude_urls'

