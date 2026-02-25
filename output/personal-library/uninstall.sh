#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'personal_library_contributor'
wp option delete 'personal_library_author'
wp option delete 'personal_library_editor'

