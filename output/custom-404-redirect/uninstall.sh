#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom_404_redirect_status'
wp option delete 'custom_404_redirect_type'
wp option delete 'custom_404_redirect_page_id'

