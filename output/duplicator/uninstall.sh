#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'backwpup_cfg_logfolder'
wp option delete 'site_admins'
wp option delete 'active_sitewide_plugins'
wp option delete 'gd_system_last_cache_flush'
wp option delete 'duplicator_exe_safe_mode'

