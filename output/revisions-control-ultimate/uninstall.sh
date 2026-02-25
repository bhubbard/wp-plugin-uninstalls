#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'revicoul_revision_limit'
wp option delete 'revicoul_autosave_enabled'
wp option delete 'revicoul_delete_data'

