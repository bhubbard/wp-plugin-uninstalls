#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disable_author_pages_redirect_non_authors'
wp option delete 'disable_author_pages_activate'
wp option delete 'disable_author_pages_adminonly'
wp option delete 'disable_author_pages_status'
wp option delete 'disable_author_pages_destination'
wp option delete 'disable_author_pages_authorlink'

