#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfly_simply_excerpt_words_enabled'
wp option delete 'sfly_simply_excerpt_words'
wp option delete 'sfly_simply_excerpt_read_more_enabled'
wp option delete 'sfly_simply_excerpt_read_more'
wp option delete 'sfly_simply_excerpt_type'

