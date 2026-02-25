#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'automagicalinks_options'
wp option delete 'autolinking'
wp option delete 'automagicality'
wp option delete 'link_characters'
wp option delete 'link_escape_character'
wp option delete 'allowed_post_types'
wp option delete 'allowed_link_names'
wp option delete 'excluded_elements'
wp option delete 'aliases'

