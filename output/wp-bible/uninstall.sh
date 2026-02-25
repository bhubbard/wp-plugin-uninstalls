#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_bible_default_width'
wp option delete 'wp_bible_slim'
wp option delete 'wp_bible_inline'
wp option delete 'wp_bible_new_window'
wp option delete 'wp_bible_default_version'

