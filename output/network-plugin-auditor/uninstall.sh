#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'auditor_blog_list'
wp transient delete 'auditor_active_plugins'
wp transient delete 'auditor_active_themes'

