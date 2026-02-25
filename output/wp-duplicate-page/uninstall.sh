#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'njt_duplicate_post_types'
wp option delete 'njt_duplicate_text_link'
wp option delete 'njt_duplicate_in_editor'
wp option delete 'njt_duplicate_reviewed'
wp option delete 'njt_duplicate_roles'

