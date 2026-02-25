#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'excerpt_stuff_active'
wp option delete 'excerpt_stuff_excerpt_text'
wp option delete 'excerpt_stuff_excerpt_padding'

