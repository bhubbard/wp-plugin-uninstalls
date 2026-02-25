#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'profiling_user_permission_1'
wp option delete 'profiling_user_permission_2'
wp option delete 'always_show_profiling'
wp option delete 'allow_get_request'
wp option delete 'override_disable_auto_save'
wp option delete 'override_disable_revisioning'

