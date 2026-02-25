#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpas_db_version'
wp option delete 'protectAuthor'
wp option delete 'protectAuthorName'
wp option delete 'disableLoggedIn'
wp option delete 'disableRestUser'
wp option delete 'customLoginError'
wp option delete 'wpas_filterFeed'
wp option delete 'wpas_filterEmbed'
wp option delete 'wpas_filterAuthorSitemap'

