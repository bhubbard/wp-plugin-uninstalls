#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'keepspace_title'
wp option delete 'keepspace_excerpt'
wp option delete 'keepspace_content'
wp option delete 'keepspace_comment'
wp option delete 'keepspace_space_type'

