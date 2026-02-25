#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disable-widgets'
wp option delete 'seo_consultant_current_version'
wp option delete 'enable-htaccess-auto-rewrite'
wp option delete 'check-links'
wp option delete 'check-live-link'

