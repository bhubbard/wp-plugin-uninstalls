#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plrpws_protect_blog'
wp option delete 'plrpws_protect_feeds'
wp option delete 'plrpws_protect_uploads'
wp option delete 'plrpws_exceptions'

