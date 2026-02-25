#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'home_excerpt_length'
wp option delete 'archive_excerpt_length'
wp option delete 'allowd_tag'
wp option delete 'read_more_link'

