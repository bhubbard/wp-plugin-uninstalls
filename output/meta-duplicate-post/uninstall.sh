#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'metadupo_allowed_roles'
wp option delete 'metadupo_post_status'
wp option delete 'metadupo_post_author'
wp option delete 'metadupo_post_date'
wp option delete 'metadupo_allowed_post_types'

