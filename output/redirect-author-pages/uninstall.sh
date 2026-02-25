#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_redirect_author_pages_redirect_non_authors'
wp option delete 'wp_redirect_author_pages_activate'
wp option delete 'wp_redirect_author_pages_adminonly'
wp option delete 'wp_redirect_author_pages_status'
wp option delete 'wp_redirect_author_pages_destination'
wp option delete 'wp_redirect_author_pages_authorlink'

