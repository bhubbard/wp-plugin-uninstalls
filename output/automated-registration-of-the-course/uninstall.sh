#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jal_db_version'
wp option delete 'dot_pages_enable'
wp option delete 'dot_pages_slug'
wp option delete 'dot_pages_mode'
wp option delete 'option_etc'

