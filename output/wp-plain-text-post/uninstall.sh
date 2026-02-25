#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpplainpost_user_roles'
wp option delete 'wpplainpost_post_types'
wp option delete 'wpplainpost_post_allowed_tags'

