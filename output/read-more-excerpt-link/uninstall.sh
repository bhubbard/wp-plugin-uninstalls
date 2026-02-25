#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'read_more_excerpt_link_text'
wp option delete 'read_more_excerpt_include_ellipsis'
wp option delete 'read_more_excerpt_more_often'
wp option delete 'read_more_excerpt_word_length'

