#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cg_deferred_admin_notices'
wp option delete 'cg_version'
wp option delete 'cg-language'

