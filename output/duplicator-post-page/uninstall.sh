#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'duplicator_post_page_installed'
wp option delete 'duplicator_post_page_version'

