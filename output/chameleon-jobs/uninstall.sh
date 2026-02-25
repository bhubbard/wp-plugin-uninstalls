#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thank_you_page'
wp option delete 'jobs_page_url'
wp option delete 'forget_page_url'
wp option delete 'login_page_url'
wp option delete 'register_page_url'
wp option delete 'profile_page_urll'
wp option delete 'jobs_search_url'

