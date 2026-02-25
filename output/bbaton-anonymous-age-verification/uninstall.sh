#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbaa_scroll_to_show'
wp option delete 'bbaa_client_id'
wp option delete 'background_image'
wp option delete 'bbaa_client_secret'
wp option delete 'bbaa_redirect_url'
wp option delete 'bbaa_lock_pages'
wp option delete 'bbaa_exit_url'
wp option delete 'bbaa_site_url'
wp option delete 'bbaa_headings'

