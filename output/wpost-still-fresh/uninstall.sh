#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chron0striggeuss_active'
wp option delete 'chron0striggeuss_posts_interval'
wp option delete 'chron0striggeuss_posts_backdate'
wp option delete 'chron0striggeuss_pages_interval'
wp option delete 'chron0striggeuss_pages_backdate'
wp option delete 'chron0striggeuss_stored_post_interval'
wp option delete 'chron0striggeuss_stored_page_interval'

