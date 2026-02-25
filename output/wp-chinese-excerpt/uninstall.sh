#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'read_more_link'
wp option delete 'more_tag_prior'
wp option delete 'home_excerpt_length'
wp option delete 'archive_excerpt_length'
wp option delete 'allowd_tag'

