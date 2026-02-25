#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'minify_html_active'
wp option delete 'minify_javascript'
wp option delete 'minify_html_comments'
wp option delete 'minify_html_utf8'
wp option delete 'minify_html_xhtml'
wp option delete 'minify_html_relative'
wp option delete 'minify_html_scheme'

