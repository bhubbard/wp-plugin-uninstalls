#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbflm_fmanager_roles'
wp option delete 'flmbkpbuild_version'
wp option delete 'flmbkp_opt_theme'
wp option delete 'flmbkp_opt_lang'

