#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'googlenewssitemap_tagkeywords'
wp option delete 'googlenewssitemap_includePages'
wp option delete 'googlenewssitemap_includePosts'
wp option delete 'googlenewssitemap_excludeCat'
wp option delete 'rss_language'

