#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simplefediversecreator_username'
wp option delete 'simplefediversecreator_allow_authors'
wp option delete 'smverification_site_url'
wp option delete 'smverification_allow_authors'

