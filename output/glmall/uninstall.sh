#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'glmall_flash_notices'
wp option delete 'glmall_activation_error'
wp option delete 'glmall_plugin_version'
wp option delete 'glmall_installl_completed'
wp option delete 'glmall_activated'

