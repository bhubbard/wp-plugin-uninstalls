#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icss_css'
wp option delete 'icss_version'
wp option delete 'icss_postcss'
wp option delete 'icss_lang'
wp option delete 'icss_theme'
wp option delete 'icss_preprocessor'
wp option delete 'icss_minify'

