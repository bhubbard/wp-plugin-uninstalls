#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ra_featured_admin_show'
wp option delete 'ra_featured_admin_keep'
wp option delete 'ra_featured_admin_feed'

